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
#include "xil_io.h"
#include "sleep.h"

int main()
{
    init_platform();
    ////////////////////////////////////////////////////////////////////////////////////
    //test i2c_master
    int r1_status ; // ip master
	int r2_status ; // top ip
/*
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x18 , 0x28F9) ; // mode_i2c , i_ready , div_cnt	master
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x00 , 0x20); // setup address + rw
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x10 , 0x04); // setup data_cnt
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08 , 0x00); // setup data_in
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08 , 0x01); // setup data_in
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08 , 0x02); // setup data_in
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08 , 0x04);	// setup data_in
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08 , 0x08);	// setup data_in

    while(1){
        	r1_status = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x04);
    		if(r1_status ) {
    			break;
    		};
        };
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x18 , 0x28F9) ; // mode_i2c , i_ready , div_cnt
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x10 , 0x00); // setup data_cnt
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08 , 0x00); // setup data_in
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x00 , 0x20); // setup address + rw

    while(1){
           	r1_status = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x04);
       		if(r1_status ) {
       			break;
       		};
           };
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x18 , 0x28F9) ; // mode_i2c , i_ready , div_cnt
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x10 , 0x03); // setup data_cnt
    Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x00 , 0x21); // setup address + rw

    while(1){
              	r1_status = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x04);
          		if(r1_status ) {
          			break;
          		};
              };
    Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x0C) ;
    Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x0C) ;
    Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x0C) ;
    Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x0C) ;
*/
    /////////////////////////////////////////////////////////////////////////////////////
    // test i2c_slave
		Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x18 , 0x10F9) ;	// slave
		Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x00 , 0x20) ;
    while(1){
            	r1_status = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x04);
                	if(r1_status ) {
                 			break;
                };
    };
    	Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x0C) ;
        Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x0C) ;
        Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x0C) ;
        Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x0C) ;
        Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x0C) ;
   while(1){
	   	   	   r2_status = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x14);
	   	   	   r2_status  = r2_status & 0x04 ;
	   	   	   	   if(r2_status ){				// master send rw = read ;
	   	   	   		   	   break;
	   	   	   	   };

   };
   // stretching
   for(int i=0; i<50;i++)
   {
	   Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x10 , 0x00);
   }
		Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08 , 0x01);
		Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08 , 0x02);
		Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08 , 0x04);
		Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08 , 0x08);

     

////////////////////////////////////////////////////////////////////////////////////////////////////////
// test adxl345
    int r_status ;

        int cnt = 1 ;
        int t0_data ;
        int t1_data ;
        float t_data  ;

       	// setup register
        print("hello word \n");
        Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x18, 0x28F9); // mode_i2c , i_ready , div_cnt
       	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x00, 0xA6); // address = 0x53 + rw = 0x00;
       	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x10, 0x03); // data_cnt
       	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08, 0x2D); // register POWER_CTL
       	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08, 0x08);
       	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08, 0x31); // register DATA_FORMAT
       	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08, 0x08); // register right justified , mode 10bit for +/-2g
    


       	/////////////////////////////////////////////////////////
       	// read register X,Y,Z,reg_default
       	while(1)
        {
          	 r_status = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x04);
          			if(r_status)
          			{
          				break;
          			};
          	 };
        Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x00, 0xA6); // address = 0x53 + rw = 0x00;
       	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x10, 0x00); // data_cnt
       	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08, 0x00); // reg_default
        Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x18, 0x28F9); // mode_i2c , i_ready , div_cnt
       	while(1)
       	{
       	    r_status = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x04);
       			if(r_status)
       			{
       				break;
       			}
       	 }
       	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x00, 0xA7); // address = 0x53 + rw = 0x01;
       	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x10, 0x00); // data_cnt
       	Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x18, 0x08F9); // mode_i2c , i_ready , div_cnt
       	while(1)
       	{
       	   	r_status = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x04);
       	   			if(r_status)
       	   			{
       	   				break;
       	   			}
       	}
       	t0_data = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x0c);
       	printf("%x \n", t0_data);

       	// read register X,Y,Z
       	print("+/- 2g \n ");
    while(1)
       	{
    	print("cnt : ");
    	printf("%x\n", cnt);
    	int reg_addr = 0x32;
    		for(int i = 1 ; i<=3 ; i++)
    			{

    				Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x00, 0xA6); // address = 0x53 + rw = 0x00;
    				Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x10, 0x01); // data_cnt
    				Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08, reg_addr); // register 0
    				Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x08, reg_addr + 0x01 ); // register 1

    				Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x18, 0x28F9); // mode_i2c , i_ready , div_cnt
    				while(1)
    				{
    					r_status = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x04);
    						if(r_status)
    						{
    							break;
    						}
    				 }
    				Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x00, 0xA7); // address = 0x53 + rw = 0x01;
    				Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x10, 0x01); // data_cnt
    				Xil_Out32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x18, 0x28F9); // mode_i2c , i_ready , div_cnt
    				while(1)
    				{
    					r_status = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x04);
    							if(r_status)
    							{
    								break;
    							}
    				}
    				t0_data = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x0c)  ;
    				t1_data = Xil_In32(XPAR_TOP_IP_I2C_0_BASEADDR + 0x0c)  ;
    				t1_data = t1_data & 0x03 ; // delete t1_data[7:2]
    				t_data = (t1_data << 8 ) + t0_data ; // t_data = {t1_data[1:0] , t0_data[7:0]}
    				if(t_data > 511)
    				{
    					t_data = t_data - 1024;
    				}
    				t_data = t_data * 0.0039 ;
    				printf("  %f  \n", t_data);
    				reg_addr = reg_addr + 0x02;
    			}
    		cnt++;

    		if(cnt == 11) // number read register X,Y,Z
    		{
    			break;
    		}
       	}


           cleanup_platform();
        return 0;
    }
