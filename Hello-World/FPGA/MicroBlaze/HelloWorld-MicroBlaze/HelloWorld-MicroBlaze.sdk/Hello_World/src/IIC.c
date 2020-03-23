/*
 * IIC.c
 *
 *  Created on: 2019/10/29
 *      Author: Opex9020
 */

#include "IIC.h"

//IIC write data: IIC base address, slave address, register address, register data, whether double address
u8 IIC_Write_Data(int Base_Addr, u8 Slave_Addr,u16 Reg_Addr,u8 Reg_Data,u8 Dual_Addr){
	u8 Buffer[3]={0};
	//If it is a dual address, send 16-bit address and 8-bit data
	if(Dual_Addr){
		Buffer[0] = (Reg_Addr>>8)& 0xff;
		Buffer[1] = Reg_Addr&0xff;
		Buffer[2] = Reg_Data;
		return XIic_Send(Base_Addr, Slave_Addr, Buffer, 3, 0);
	}
	//Otherwise only send 8 low-order addresses and 8 bits of data
	else{
		Buffer[0] = Reg_Addr&0xff;
		Buffer[1] = Reg_Data;
		return XIic_Send(Base_Addr, Slave_Addr, Buffer, 2, 0);
	}

	return 0;
}
//IIC read data: IIC base address, slave address, register address, double address
u8 IIC_Read_Data(int Base_Addr, u8 Slave_Addr,u16 Reg_Addr,u8 Dual_Addr)
{
	u8 Write_Buffer[2]={0};
	u8 Read_Buffer=0;
	//If it is a dual address, send a 16-bit address
	if(Dual_Addr){
		Write_Buffer[0]=(Reg_Addr>>8)& 0xff;
		Write_Buffer[1] = Reg_Addr&0xff;
		XIic_Send(Base_Addr, Slave_Addr, Write_Buffer, 2, 0);
	}
	else{
		Write_Buffer[0] = Reg_Addr&0xff;
		XIic_Send(Base_Addr, Slave_Addr, Write_Buffer, 1,0);
	}
	XIic_Recv(Base_Addr, Slave_Addr, &Read_Buffer, 1, 0);
	return Read_Buffer;
}

