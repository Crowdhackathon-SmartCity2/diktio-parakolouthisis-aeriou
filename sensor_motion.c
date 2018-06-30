#include <system.h>
#include "sensor_motionlib.h"

unsigned int value=0;
#define Datamask 0x10

void measurement_sensora0()
      {
		unsigned int ValueEnd,ValueEnd1,ValueEnd2,ValueEnd3,ValueEnd4,RsEnd,RsEnd1;//WARNING!!!Forced Not the data_types:~long,float
	    unsigned int R0=26500;//resistance_sensor_search in the fresh_Air and RLoad=470hm.
			
			set_bit(adcon0,2);//ADConv->bySPR(Stack_Pointer_Register)->Interrupt(Software).
			ValueEnd=Handler_Value();//here Return the ValueDigit of Interrupt.WARNING!!!here doing the Arithmetic_Executable
			res_valdigit(ValueEnd);//resolution valuedigit as unit,dec...here the function USART_transmission
			/*[Rs/R0(=26500)&Rs=RL(=450)]=RL/R0[(Vc(=5v)/Vout) -1)]...in LabView:xVolts=(ValueEndDigitx5/1023)=
			   Rsvarius/R0FreshAir=470/26500[(5/Vout)-1]=[(0.017x5/Vout)-1]=(0.088/Vout)-0.017]->Rsvarius/RoFreshAir=(0.088/Vout)-0.017
			                                             Σημείωση: Vout=(5/1023)xValue_End=4.88x10^(-3)xValue_End*/
				
								
/*START_OFF		if(ValueEnd<=12)
				 {
					ValueEnd1=ValueEnd*5;//the ValueEnd is the Result ADConversion
					ValueEnd2=ValueEnd1*1023;//taken the type give act:/ unsigned integer
					ValueEnd3=ValueEnd2/1023;//give act:/ unsigned integer
					ValueEnd4=5000/ValueEnd3;//give act:/ unsigned integer,Increase the Rage MeasuraementX1000 RL=0.45KΩ=450Ω,Rs0 = Sensor resistance in fresh air:>>>
					RsEnd=450*(ValueEnd4-1);//give act:/ unsigned integer,//RsEnd=450*((((5*1000)/ValueEnd)-1))
					RsEnd=RsEnd+1000;//correction
				 }
				else
				 if(ValueEnd<21)
				{
				    ValueEnd1=ValueEnd*5;
					ValueEnd2=ValueEnd1*100;
					ValueEnd3=ValueEnd2/1023;
					ValueEnd4=500/ValueEnd3;
					RsEnd=((450*ValueEnd4)-1000);
				}
			   else
			    {
				    ValueEnd1=ValueEnd*5;
					ValueEnd2=ValueEnd1*10;
					ValueEnd3=ValueEnd2/1023;
					ValueEnd4=50/ValueEnd3;
					RsEnd=(450*(ValueEnd4-1))+1000;
			    }
			    
			    
			    
			RsEnd1=R0/RsEnd;
			if(RsEnd1>=6)
			 {
				LCD_pos_cursor(0,1);
				LCD_print_mess(4);//ok
				portd=0b00000000;
				portd=0b10000000;
				delay_time(5,32768);//tdelay=~100msec
				portd=0b00000000;
				delay_time(5,32768);
			 }
			 else if(RsEnd1>=5)
			{
				LCD_pos_cursor(0,1);
				LCD_print_mess(5);//ok
				portd=0b00000000;
				portd=0b10000000;
				delay_time(4,32768);//tdelay=~100msec
				portd=0b00000000;
				delay_time(4,32768);
			}
			else if(RsEnd1>=3)
			{
				LCD_pos_cursor(0,1);
				LCD_print_mess(6);//ok->concentration>=20ppm
				portd=0b10000000;
				portd=0b10000000;
				delay_time(3,32768);//tdelay=~100msec
				portd=0b00000000;
				delay_time(3,32768);
			}
			else if(RsEnd1>=2)
			{
				LCD_pos_cursor(0,1);
				LCD_print_mess(9);
				portd=0b00000000;
				LCD_print_mess(7);//ok
				portd=0b10000000;
				delay_time(2,32768);//tdelay=~100msec
				portd=0b00000000;
				delay_time(2,32768);
	}
			else if(RsEnd1>=1)
			{
				LCD_pos_cursor(0,1);
				LCD_print_mess(9);
				portd=0b00000000;
				LCD_print_mess(8);//ok
				portd=0b10000000;
				delay_time(1,32768);//tdelay=~173msec
				portd=0b00000000;
				delay_time(1,32768);
			}
		else
			{
				LCD_pos_cursor(0,1);
				LCD_print_mess(9);//ok
				portd=0b00000000;
			}
			
			
		  			
			//LCD_pos_cursor(0,0);
			//delineament_value(RsEnd);//delineament Value->screen_MPU & H/Y for TEST
			//delay_time(5,65535);
			;
			//adcon0=0b10001001;//enable:Channel_AN1
			//Read_ADConv();
			//ValueEnd1=Handler_Value();
			//LCD_pos_cursor(0,0);
			//delineament_value(ValueEnd1);//delineament Value->screen_MPU & H/Y	
            delay_time(5,65535);//experiment increment delay_time.tdelay=4*T(19660800^(-1)*13*5*65535=867msec END_OFF*/
      }                                                                                                                                        
void measurement_sensora1()
  {
	unsigned int ValueEnd,ValueEnd1;
	
	set_bit(adcon0,2);//Start ADConversion tall_ADConv=12*tADConv(1.627us)=19.531us~20usec
	ValueEnd=Handler_Value();//ValueEnd is Value_Digital_Result_scale
	res_valdigit(ValueEnd);//resolution valuedigit as unit,dec...here the function USART_transmission
	//equation_Relative_Humidity=(ValueEnd1-0.826)/0.0315=31.746(ValueEnd1-0.826)=~32*ValueEnd1-26.222=~32*ValueEnd1-26
    delay_time(5,65535);//experiment increment delay_time.tdelay=4*T(19660800^(-1)*13*5*65535=867msec
  }

void transmit_code()
  {
	txreg='a';//recognize the code of LabView for function sensorAN0
	delay_time(2,150);//tdelay_time=4*19660800^(-1)*13*2*150=793us
  }

void transmit_code1()
  {
	txreg='b';//recognize the code of LabView for function sensorAN1 for other sensor
	delay_time(2,150);//tdelay_time=4*19660800^(-1)*13*2*150=793us
  }

void transmit_code2()
  {
	txreg='c';//recognize the code of LabView for function sensorAN1 for other sensor
	delay_time(2,150);//tdelay_time=4*19660800^(-1)*13*2*150=793us
  }

void transmit_code3()
  {
	txreg='d';//recognize the code of LabView for function sensorAN1 for other sensor
	delay_time(2,150);//tdelay_time=4*19660800^(-1)*13*2*150=793us
  }

void main(void)
  {
	unsigned int ValueEnd,ValueEnd1,ValueEnd2,ValueEnd3,ValueEnd4,RsEnd,RsEnd1;//WARNING!!!Forced Not the data_types:~long,float
	unsigned int R0=26500;//resistance_sensor_search in the fresh_Air and RLoad=470Ohm.
	unsigned char s=0;
	
	init_USART();
	LCD_init();//configured_LCD
	init_ADC();//configured ADC
		 			
		/*readload_CGRAM(0);
		readload_CGRAM(1);
		readload_CGRAM(2);
		readload_CGRAM(3);
		readload_CGRAM(4);*/
		
		/*start0:
		while('s'!=rcreg)
		 {
			goto start0;
		 }
		
		start:*/
		LCD_pos_cursor(0,0);
		LCD_print_mess(0);	
		LCD_pos_cursor(0,1);
		LCD_print_mess(1);
		//tdelay=4Toscx13xsize1xsize0=4(19660800^(-1)x13x34x65535=5.9sec.delay_time all parameters above
		delay_time(34,65535);
		LCD_pos_cursor(0,0);
		LCD_print_mess(2);
		LCD_pos_cursor(0,1);
		LCD_print_mess(3);
		delay_time(34,65535);//tdelay=5.9sec
		
		//delay_time(1153,65535);//tdelay=200sec->tdelay=4*T*13*size1*size0=4*(19660800^(-1))*13*1153*65535=199.850~=200sec/60sec=3,333min
		
		//LCD_pos_cursor(0,0);
		//SetAddr_DATA_DDRAM(0x00);
		//SetAddr_DATA_DDRAM(0x01);
		//SetAddr_DATA_DDRAM(0x02);
		//SetAddr_DATA_DDRAM(0x03);
		//SetAddr_DATA_DDRAM(0x04);
		//delay_time(34,65535);
		
	     do 
	     {
			
			//Reading ADConversion method:interrupt
			//ValueEnd=Read_ADConv();
			s=s+1;
			switch(s)
			   {
				/*case 1:{adcon0=0b10001001;transmit_code();measurement_sensora0();break;}//execute timming_programming:a_AN0_b_AN1->...transformer_arrival 
				case 2:{adcon0=0b10000001;transmit_code1();measurement_sensora1();break;}//wanting!!!input_DelayTime of LabVIWE:placement at REgisters_Buffers:AN1_(b_AN0)_a*/
			    case 1:{transmit_code();adcon0=0b10000001;measurement_sensora0();transmit_code();delay_time(111,1024);/*300ms*/break;}//execute timming_programming:a_AN0_b_AN1->...transformer_arrival 
				case 2:{transmit_code1();adcon0=0b10001001;measurement_sensora0();transmit_code1();delay_time(111,1024);break;}//wanting!!!input_DelayTime of LabVIWE:placement at REgisters_Buffers:AN1_(b_AN0)_a
			    case 3:{transmit_code2();adcon0=0b10010001;measurement_sensora0();transmit_code2();delay_time(111,1024);break;}
			    case 4:{transmit_code3();adcon0=0b10011001;measurement_sensora0();transmit_code3();delay_time(111,1024);break;}//measurement_AN3->encapsulation_a.AN3.a
			   }
			//delay_time(2,32768);//tdelay=4T*13*size0*size1=~170msec
		    if(s>=5)
		     {
				s=0;
		     }	
		}
		while(1);	
  }