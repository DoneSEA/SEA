/*
 * Gyro.h
 *
 *  Created on: 2019/10/29
 *      Author: Opex9020
 */

#ifndef SRC_GYRO_H_
#define SRC_GYRO_H_


#include "xil_types.h"

u8 Init_Gyro(void);
void Gyro_Angle_Data_Get(u8 *Angle_Data_X,u8 *Angle_Data_Y,u8 *Angle_Data_Z);
void Gyro_Temp_Data_Get(u8 *Temp_Data);
void Gyro_Mag_Data_Get(u8 *Mag_Data_X,u8 *Mag_Data_Y,u8 *Mag_Data_Z);

#endif /* SRC_GYRO_H_ */
