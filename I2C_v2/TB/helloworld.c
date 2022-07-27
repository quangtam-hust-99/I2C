/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "Xil_io.h"
#include "xil_exception.h"
#include "microblaze_sleep.h"

void myISR(void);
void init_interrupt(void);

u32 reg_addr  ;
u32 reg_data ;
int status ;
int mem_data[9] = { 0,4,8,10,11,12,0};
int mem_data_cnt[10] ={0x00 , 0x03 };
int mem_addr[10]={0x40 , 0x42 };


int counter	=0 ; // for interrupt
int pt = 0 ;
int pt_data_cnt = 0 ;
int pt_addr = 0;
int addr_device ;
int data_cnt ;

int main()
{
    init_platform();

    init_interrupt();

    cleanup_platform();
    return 0;
}
// master

void init_interrupt(void)
{

	microblaze_enable_interrupts();

	// initialization data
	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x18 , 0x28F9) ; // mode_i2c , i_ready , div_cnt	master
	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x00 , 0x40); // setup address + rw
	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x10 , 0x04); // setup data_cnt

    microblaze_register_handler((XInterruptHandler) myISR, (void *) 0);
}

void myISR(void) {
	status = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x04) ; // check interrupts
	switch(status)
	    	{
	    	case 0x02 : // i2c_done
	    		data_cnt = mem_data_cnt[pt_data_cnt] ;
	    		addr_device = mem_addr[pt_addr] ;
	    		pt_addr ++ ;
	    		pt_data_cnt ++ ;
	    		Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x18 , 0x28F9) ; // mode_i2c , i_ready , div_cnt	master
	    		Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x00 , addr_device); // setup address + rw
	    		Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x10 , data_cnt); // setup data_cnt
	    		break;
	    	case 0x04 : // tx_da_ack
	    		Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08 , mem_data[pt]);	// setup data_in
	    		pt ++ ;
	    	    break;
	    	case 0x08 : // rx_da_ack
	    		Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x0c) ; // data_out
	    		break;
	    	}
	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x20 , 0x01); // clear interrupt

}
/*
// slave
void init_interrupt(void)
{

	microblaze_enable_interrupts();

	// initialization data
	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x18 , 0x11F4) ; // mode_i2c , i_ready , div_cnt
	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x28 , 0xB54) ; // time_out
	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x00 , 0x20); // setup address + rw

    microblaze_register_handler((XInterruptHandler) myISR, (void *) 0);
}
void myISR(void) {
	status = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x04) ; // check interrupts
	switch(status)
	    	{
	    	case 0x01 : // start condition
	    		Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x18 , 0x11F4) ; // mode_i2c , i_ready , div_cnt	master
	    		Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x00 , addr_device); // setup address + rw
	    		Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x10 , data_cnt); // setup data_cnt
	    		break;
	    	case 0x02 : // stop conditon
	    		data_cnt = mem_data_cnt[pt_data_cnt] ;
	    		addr_device = mem_addr[pt_addr] ;
	    		pt_addr ++ ;
	    		pt_data_cnt ++ ;
	    		break;
	    	case 0x14 :	// tx_da_ack
	    		counter ++ ;
	    		if(counter == 1)
	    		{
	    			for(int i=0 ; i< 100 ;i++) // clock stretching > time out
	    		    	{
	    		    		Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x21 , 0x0a);	// create stretching
	    		    	};
	    		}
	    		else if(counter == 2)
	    		{
	    			for(int i=0 ; i<40  ;i++) // clock stretching < time out
	    				{
	    				    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x21 , 0x0a);	// create stretching
	    				};
	    			Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08 , 0x0b);	// setup data_in
	    		}
	    		else
	    		{
	    			Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08 , mem_data[pt]);	// setup data_in
	    			pt++;
	    		}

	    			break;
	    	case 0x08 : // rx_da_ack
	    		Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x0c) ; // data_out
	    		break;
	    	}
	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x20 , 0x01); // clear interrupt

}
*/

