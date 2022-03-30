#include <Arduino.h>
#include <Wire.h>
#include <Math.h>
#include "ANO.h"

#define ESP32_SCL   21
#define ESP32_SDA   22
#define MPU6050     0x68

#define PWR_MGMT_1  0x6B
#define SMPLRT_DIV  0x19
#define CONFIG      0x1A
#define GYRO_CONFIG 0x1B
#define ACC_CONFIG  0x1C

#define ACCEL_XOUT_H  0x3B
#define ACCEL_XOUT_L  0x3C
#define ACCEL_YOUT_H  0x3D
#define ACCEL_YOUT_L  0x3E
#define ACCEL_ZOUT_H  0x3F
#define ACCEL_ZOUT_L  0x40

#define TEMP_OUT_H    0x41
#define TEMP_OUT_L    0x42

#define GYRO_XOUT_H   0x43
#define GYRO_XOUT_L   0x44
#define GYRO_YOUT_H   0x45
#define GYRO_YOUT_L   0x46
#define GYRO_ZOUT_H   0x47
#define GYRO_ZOUT_L   0x48

#define CALIB_NUM  1000 //校准时读数的次数

typedef struct Gyro
{
    int16_t x = 0;
    int16_t y = 0;
    int16_t z = 0;

    float xReal = .0f;
    float yReal = .0f;
    float zReal = .0f;
} Gyro;

typedef struct Acc
{
    int16_t x = 0;
    int16_t y = 0;
    int16_t z = 0;

    float xReal = .0f;
    float yReal = .0f;
    float zReal = .0f;
} Acc;

typedef struct GyroBias
{
    /* data */
    float xBias;
    float yBias;
    float zBias;
} GyroBias;

typedef struct AccBias
{
    /* data */
    float xBias;
    float yBias;
    float zBias;
} AccBias;

typedef struct KalmanArgs
{
  /* data */
    static constexpr float dt = 0.001;
    static constexpr float Q_angle = 0.001, Q_bias = 0.003, Q_newAngle = 0.03;
    float P[2][2] = {{1, 0},
                     {0, 1}};
    float K0 = .0, K1 = .0;
    float bias = .0;
    float outAngle = .0;
} KalmanArgs;

typedef struct Pose
{
    /* data */
    float roll = .0f;
    float pitch = .0f;
    float yaw = .0f;
} Pose;

void printBias();
void printAccAndGyro(Acc* acc, Gyro* gyro);
void printRollAndPitch(const Pose* pose);
void calibration();
void Rectify(Acc* acc, Gyro* gyro);
float getRoll(const Acc* acc);
float getPitch(const Acc* acc);

void InitMPU6050();
void WriteMPUReg(uint8_t regAddr, uint8_t data);
uint8_t ReadMPUReg(uint8_t regAddr);
void ReadAccAndGyro(Acc*, Gyro*);
float KalmanFilter(float newAngle, float gyro, KalmanArgs* kalmanArgs);


static GyroBias gyroBias;
static AccBias  accBias;
static Acc acc;
static Gyro gyro;
static Pose pose;
static KalmanArgs rollArgs;
static KalmanArgs pitchArgs;
static KalmanArgs yawArgs;

void setup() {
    // put your setup code here, to run once:
    Serial.begin(115200);
    Wire.begin(ESP32_SDA, ESP32_SCL);
    InitMPU6050();

    calibration();
    rollArgs.bias = gyroBias.xBias/32.8f;
    pitchArgs.bias = gyroBias.yBias/32.8f;

    printBias();
}

void loop() {
    // put your main code here, to run repeatedly:

    ReadAccAndGyro(&acc, &gyro);
    Rectify(&acc, &gyro);

    pose.roll = getRoll(&acc);
    pose.pitch = getPitch(&acc);
    
    pose.roll = KalmanFilter(pose.roll, gyro.xReal, &rollArgs);
    pose.pitch = KalmanFilter(pose.pitch, gyro.yReal, &pitchArgs);
    pose.yaw = KalmanFilter(pose.yaw, gyro.zReal, &yawArgs);

    // printAccAndGyro(&acc, &gyro);
    printRollAndPitch(&pose);
    ANO_DT_Send_Pose((int16_t)(pose.roll*100), (int16_t)(pose.pitch*100), (int16_t)(pose.yaw*100), 0);
}

void printBias() {
    Serial.print("AcX_Bias = ");     Serial.print((accBias.xBias));
	Serial.print(" | AcY_Bias = ");  Serial.print((accBias.yBias));
	Serial.print(" | AcZ_Bias = ");  Serial.print((accBias.zBias));
	// Serial.print(" | Tmp = ");  Serial.print(*Tmp/340.00+36.53); //equation for temperature in degrees C from datasheet
	Serial.print(" | GyX_Bias = ");  Serial.print((gyroBias.xBias));
	Serial.print(" | GyY_Bias = ");  Serial.print((gyroBias.yBias));
	Serial.print(" | GyZ_Bias = ");  Serial.println((gyroBias.zBias));
}

void printAccAndGyro(Acc* acc, Gyro* gyro) {
	// Serial.print("AcX = ");     Serial.print((acc->xReal));
	// Serial.print(" | AcY = ");  Serial.print((acc->yReal));
	// Serial.print(" | AcZ = ");  Serial.print((acc->zReal));
	// Serial.print(" | Tmp = ");  Serial.print(*Tmp/340.00+36.53); //equation for temperature in degrees C from datasheet
	// Serial.print(" | GyX = ");  Serial.print((gyro->xReal));
	// Serial.print(" | GyY = ");  Serial.print((gyro->yReal));
	// Serial.print(" | GyZ = ");  Serial.println((gyro->zReal));
	Serial.print("AcX = ");     Serial.print((acc->x));
	Serial.print(" | AcY = ");  Serial.print((acc->y));
	Serial.print(" | AcZ = ");  Serial.print((acc->z));
	// Serial.print(" | Tmp = ");  Serial.print(*Tmp/340.00+36.53); //equation for temperature in degrees C from datasheet
	Serial.print(" | GyX = ");  Serial.print((gyro->x));
	Serial.print(" | GyY = ");  Serial.print((gyro->y));
	Serial.print(" | GyZ = ");  Serial.println((gyro->z));
    delay(150);
}

void printRollAndPitch(const Pose* pose) {
    Serial.print("Roll = ");    Serial.print(pose->roll);
    Serial.print(" | Pitch = ");    Serial.print(pose->pitch);
    Serial.print(" | Yaw = ");    Serial.println(pose->yaw);
    delay(50);
}

void calibration() {
    Acc     acc;
    Gyro    gyro;
    float   calibData[6] = {.0f};

    //求和
    for (size_t i = 0; i < CALIB_NUM; i++)
    {
        ReadAccAndGyro(&acc, &gyro);
        calibData[0] += acc.x;
        calibData[1] += acc.y;
        calibData[2] += acc.z;
        calibData[3] += gyro.x;
        calibData[4] += gyro.y;
        calibData[5] += gyro.z;
    }
    // 求平均
    for (size_t i = 0; i < 6; i++)
    {
        calibData[i] = calibData[i]/CALIB_NUM;
    }
    calibData[2] -= 16384;  //设芯片Z轴竖直向上，设定静态工作点。
    accBias.xBias = calibData[0];
    accBias.yBias = calibData[1];
    accBias.zBias = calibData[2];

    gyroBias.xBias = calibData[3];
    gyroBias.yBias = calibData[4];
    gyroBias.zBias = calibData[5];
}

//对读数进行纠正，消除偏移，并转换为物理量。公式见文档。
void Rectify(Acc* acc, Gyro* gyro) {
    acc->xReal = (acc->x - accBias.xBias)/16384.0f;
    acc->yReal = (acc->y - accBias.yBias)/16384.0f;
    acc->zReal = (acc->z - accBias.zBias)/16384.0f;

    gyro->xReal = (gyro->x - gyroBias.xBias)/32.8f;
    gyro->yReal = (gyro->y - gyroBias.yBias)/32.8f;
    gyro->zReal = (gyro->z - gyroBias.zBias)/32.8f;
}

float getRoll(const Acc* acc) {
    float g = sqrt(acc->xReal*acc->xReal + acc->yReal*acc->yReal + acc->zReal*acc->zReal);
    float gXZ = sqrt(acc->xReal*acc->xReal + acc->zReal*acc->zReal);
    float cosVal = gXZ/g;
    if (cosVal > 1)
        cosVal = 1;
    else if (cosVal < -1)
        cosVal = -1;
    
    float result = acos(cosVal) * 57.295779513f;
    return (acc->yReal) > 0 ? -result : result;
}

float getPitch(const Acc* acc) {
    float g = sqrt(acc->xReal*acc->xReal + acc->yReal*acc->yReal + acc->zReal*acc->zReal);
    float gYZ = sqrt(acc->yReal*acc->yReal + acc->zReal*acc->zReal);
    float cosVal = gYZ/g;
    if (cosVal > 1)
        cosVal = 1;
    else if (cosVal < -1)
        cosVal = -1;

    float result = acos(cosVal) * 57.295779513f;
    return (acc->xReal) < 0 ? -result : result;
}

float KalmanFilter(float newAngle, float gyro, KalmanArgs* kalmanArgs) {
    kalmanArgs->outAngle -= ((kalmanArgs->bias)-gyro)*(kalmanArgs->dt);
    
    kalmanArgs->P[0][0] += (kalmanArgs->Q_angle-(kalmanArgs->P[1][0]+kalmanArgs->P[0][1])*kalmanArgs->dt);
    kalmanArgs->P[0][1] -= kalmanArgs->P[1][1]*kalmanArgs->dt;
    kalmanArgs->P[1][0] -= kalmanArgs->P[1][1]*kalmanArgs->dt;
    kalmanArgs->P[1][1] += kalmanArgs->Q_bias;

    kalmanArgs->K0 = kalmanArgs->P[0][0]/(kalmanArgs->P[0][0]+kalmanArgs->Q_newAngle);
    kalmanArgs->K1 = kalmanArgs->P[1][0]/(kalmanArgs->P[0][0]+kalmanArgs->Q_newAngle);

    kalmanArgs->outAngle += kalmanArgs->K0*(newAngle - kalmanArgs->outAngle);
    kalmanArgs->bias += kalmanArgs->K1*(newAngle - kalmanArgs->outAngle);

    float tmpA = kalmanArgs->P[0][0];
    float tmpB = kalmanArgs->P[0][1];
    kalmanArgs->P[0][0] = (1-kalmanArgs->K0)*kalmanArgs->P[0][0];
    kalmanArgs->P[0][1] = (1-kalmanArgs->K0)*kalmanArgs->P[0][1];
    kalmanArgs->P[1][0] -= kalmanArgs->K1*tmpA;
    kalmanArgs->P[1][1] -= kalmanArgs->K1*tmpB;

    return kalmanArgs->outAngle;
}


//**************************************
//初始化MPU6050
//**************************************
void InitMPU6050() {
	  WriteMPUReg(PWR_MGMT_1, 0x00);//解除休眠状态
	  WriteMPUReg(SMPLRT_DIV, 0x07);//陀螺仪采样率为8K/(1+0x07)=1kHz
	  WriteMPUReg(CONFIG, 0x06); //低通滤波器的截止频率为1K,带宽为5Hz
	  WriteMPUReg(GYRO_CONFIG, 0x10);//配置陀螺仪量程为1000deg/s,不自检
	  WriteMPUReg(ACC_CONFIG, 0x00);//配置加速度计量程为2g，不自检
}

void ReadAccAndGyro(Acc* acc, Gyro* gyro) {
  	Wire.beginTransmission(MPU6050);
	Wire.write(0x3B); // starting with register 0x3B (ACCEL_XOUT_H)
	Wire.endTransmission(false);
	Wire.requestFrom(MPU6050,14, 1); // request a total of 14 registers
	acc->x=Wire.read()<<8|Wire.read(); // 0x3B (ACCEL_XOUT_H) & 0x3C (ACCEL_XOUT_L)
	acc->y=Wire.read()<<8|Wire.read(); // 0x3D (ACCEL_YOUT_H) & 0x3E (ACCEL_YOUT_L)
	acc->z=Wire.read()<<8|Wire.read(); // 0x3F (ACCEL_ZOUT_H) & 0x40 (ACCEL_ZOUT_L)
	//*Tmp=Wire.read()<<8|Wire.read(); // 0x41 (TEMP_OUT_H) & 0x42 (TEMP_OUT_L)
	Wire.read();  Wire.read();
    gyro->x=Wire.read()<<8|Wire.read(); // 0x43 (GYRO_XOUT_H) & 0x44 (GYRO_XOUT_L)
	gyro->y=Wire.read()<<8|Wire.read(); // 0x45 (GYRO_YOUT_H) & 0x46 (GYRO_YOUT_L)
	gyro->z=Wire.read()<<8|Wire.read(); // 0x47 (GYRO_ZOUT_H) & 0x48 (GYRO_ZOUT_L)
	// Serial.print("AcX = ");     Serial.print((acc->x)/16384.0f);
	// Serial.print(" | AcY = ");  Serial.print((acc->y)/16384.0f);
	// Serial.print(" | AcZ = ");  Serial.print((acc->z)/16384.0f);
	// Serial.print(" | Tmp = ");  Serial.print(*Tmp/340.00+36.53); //equation for temperature in degrees C from datasheet
	// Serial.print(" | GyX = ");  Serial.print((gyro->x)/32.8f);
	// Serial.print(" | GyY = ");  Serial.print((gyro->y)/32.8f);
	// Serial.print(" | GyZ = ");  Serial.println((gyro->z)/32.8f);
	// delay(100);
}


void WriteMPUReg(uint8_t regAddr, uint8_t data) {
    Wire.beginTransmission(MPU6050);
    Wire.write(regAddr);
    Wire.write(data);
    Wire.endTransmission(true);
}

uint8_t ReadMPUReg(uint8_t regAddr) {
    Wire.beginTransmission(MPU6050);
    Wire.write(regAddr);
    Wire.requestFrom(MPU6050, 1, 1);
    return Wire.read();
}