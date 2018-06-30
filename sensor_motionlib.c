
#include <system.h>

#define Codemask 0x00
#define Datamask 0x10
#define Echip 0x05

unsigned int Handler_Value(void)
  {
	unsigned int ValueDigit;
	ValueDigit=(adresh*256)+adresl;//WARNING!!!here only Return_Index ValueDigital not an earthy change action
	return ValueDigit;
  }

void interrupt(void)
  {
	// for as long time  the interrupt executable no other new interruption huppens
	if((pir1 & 0x40)==0x40)
	 {
		clear_bit(pir1,6);
		Handler_Value();
	 }
  }

/*unsigned int Read_ADConv(void)
  {
	unsigned int ValueDigit;
	unsigned char h,l;
	set_bit(adcon0,2);//going Auto the interrupt().ADConv is in progress the bit->0 automatically by hardware when ADConv_complete,ADIE(interrupt)
	while((adcon0 & 0x04)==0x04);
	h=adresh;
	l=adresl;
	ValueDigit=(h*256)+l;//WARNING!!!here only Return_Index ValueDigital not an earthy change action
	return ValueDigit;
  }*/

unsigned int delay_time(unsigned int size1,unsigned int size0)
  {
	//t_delay=4xToscx13_instructionsxsize1xsize0
	unsigned int j,i;
	for(j=0;j<size1;j++)
	 {
	 	for(i=0;i<size0;i++);
	 } 
  }

/*αποτελούν τα δεδομένα εγγραφής χαρακτήρα CGRAM_data_info*/ 
								        /*ο ελληνικός χαρακτήρας γ:8Rows:7Rows_char+1Row_cursor:5dotsX8dots:entry mode*/
const unsigned char wordmatrix_CGRAM[]={0x10,0x0a,0x04,0x0a,0x12,0x14,0x08,0x00,'*',
									    /*o ελληνικός χαρακτήρας λ*/
									    0x04,0x0a,0x02,0x06,0x0a,0x12,0x02,0x00,'*',
									    //ελληνικός χαρακτήρας δ
									    0x00,0x06,0x08,0x08,0x04,0x0a,0x0a,0x0e,'*',
									    //ελληνικός χαρακτήρας ω
									    0x00,0x00,0x15,0x15,0x15,0x0e,0x00,0x00,'*',
									    //ελληνικός χαρακτήρας ζ
									    0x0f,0x04,0x02,0x02,0x01,0x12,0x0c,0x00,'*'};

const unsigned char LCD_init_value[]={0x33,0x32/*!!!priority_init_value for 4_bits transfer*/,0x2c/*init_value_FunctionSet*/,0x0f/*Display_on/off*/,0x06/*Entry mode set*/};
                      
unsigned char *mess[]={"///Programmed///","/sensor___Gas_CO","GasConcentration",".............ppm","........=>100ppm","=>70..~..100ppm",
                       "=>20...~...70ppm",":=>4...~...20ppm","..=>1...~...4ppm","FreshAir_XToxic!"};

void LCD_nibble_send(unsigned char value,
					 unsigned char mask)
  {
	unsigned char pb;
	
	asm
	 {
		swapf _value,F;
	 }
	pb=(value & 0x0f)|mask;
	pb=pb|(portb & 0xc0);
	portb=pb;
	//t_settle_data=4xTosc(19660800^(-1))x13_instructionsxsize0xsize1=2.644us
	delay_time(1,1);
	portb=portb|(1<<Echip);//Enable Chip gor loadded_data_info_process
	delay_time(1,1);
	portb=pb;//Disable Chip for loadded_data_info_process
	//tdelay=4xTosc((19660800)^(-1))x13x105x1=278usec
	delay_time(1,105);
	asm
	 {
		swapf _value,F;
	 }
	pb=(value & 0x0f)|mask;
	pb=(portb & 0xc0) | pb;
	portb=pb;
	delay_time(1,1);
	portb=portb|(1<<Echip);//Enable_chip
	delay_time(1,1);
	portb=pb;//Disable_chip
	delay_time(1,105);
  }
  
void lcd_print_ch(unsigned char value)
  {
	LCD_nibble_send(value,Datamask);
  }

void LCD_init()
  {
	//LCD_nibble_send(a,Codemask);
	unsigned char i;
	trisb=0x00;
	for(i=0;i<5;i++)
	 {
		LCD_nibble_send(LCD_init_value[i],Codemask);
	 }
	//LCD_nibble_send(0x01,Codemask);
    LCD_nibble_send(0x02,Codemask);
    trisd=0x00;
    portd=0x00;
  }

void LCD_pos_cursor(unsigned char col,unsigned char row)
  {
	if(row==0)
	 {
		row=0x80;//code_instruction for DDRAM_Adressing:data_info OR process
	 }
	else if(row!=0)
	 {
		row=0xc0;
	 }
	LCD_nibble_send((row+col),Codemask);
  }
 
void LCD_print_mess(unsigned char number)
  {
	unsigned char i,*pntr;
	
	for(i=number;i<number+1;i++)
	 {
		pntr=mess[i];
		while(*pntr!=0)
		  {
			LCD_nibble_send(*pntr,Datamask);
			//tdelay=~50msec
			delay_time(1,16384);
			pntr++;
		  }
	 }	
  }
  
void readload_CGRAM(unsigned char number)
  {
	unsigned char pos=0,i,numberend;
	numberend=number;
	while(number>0)
	  {
		if(wordmatrix_CGRAM[pos]=='*')
		 {
			number=number-1;
		 }
		pos=pos+1;
	  }
	if(wordmatrix_CGRAM[pos]!='*')
	 {
		switch(numberend)
			{case 0:{for(i=0;i<8;i=i+1)
					  {LCD_nibble_send((0x40+i),Codemask);
		               LCD_nibble_send(wordmatrix_CGRAM[pos+i],Datamask);
	                  }
	                 break;
                    }
             case 1:{for(i=0;i<8;i=i+1)
					  {LCD_nibble_send((0x48+i),Codemask);
		               LCD_nibble_send(wordmatrix_CGRAM[pos+i],Datamask);
	                  }
	                 break;
                    }
             case 2:{for(i=0;i<8;i=i+1)
					  {LCD_nibble_send((0x50+i),Codemask);
		               LCD_nibble_send(wordmatrix_CGRAM[pos+i],Datamask);
	                  }
	                break;
                   }
             case 3:{for(i=0;i<8;i=i+1)
					  {LCD_nibble_send((0x58+i),Codemask);
		               LCD_nibble_send(wordmatrix_CGRAM[pos+i],Datamask);
	                  }
	               break;
                  }
             case 4:{for(i=0;i<8;i=i+1)
					  {LCD_nibble_send((0x60+i),Codemask);
		               LCD_nibble_send(wordmatrix_CGRAM[pos+i],Datamask);
	                  }
	               break;
            }
         }
     }
 }
  
//for Enable SetAddressing_Deconding DDRAM the Function:
void SetAddr_DATA_DDRAM(unsigned char number)//itself void lcd_print_ch(unsigned char value)
  {
	LCD_nibble_send(number,Datamask);
  }
  
void init_ADC(void)
  {
	adcon0=0b10000001;//TADCon=1.627us,Channel0(AN0),A/DConversion not in progress,A/D Converter_module is powered up.method A/DConversion:SAR.enable:Channel_AN0
	adcon1=0b10000000;//TADCon=1.627us,Right justified_Result_Data,Channels_Pins(AN7~AN0)Analog input
	trisa=0xff;
	adresh=0x00;
	adresl=0x00;
	pir1=0b00000000;
	pie1=0b01000000;//choose method_ADConversion:interrupt
	intcon=0b11000000;
  }
  
void delineament_value(unsigned int value)
  {
	unsigned char  mills1,mills0,hunds,tens,units;//the variable for PIC16f877a is only_until:unsigned int for 16bits->2^16=65536
	
	units=value%10;//WARNING!!!the symbol for the Rest:% it is not in effect in any other case:NOT5%4.  
	value=value/10;
	tens=value%10;
	value=value/10;
	hunds=value%10;
	value=value/10;
	mills0=value%10;
	mills1=value/10;
		
	//conversion numbers->string
	lcd_print_ch('0' + mills1);
	txreg=('0' + mills1);
	lcd_print_ch('0' + mills0);
	txreg=('0' + mills0);
	lcd_print_ch('0' + hunds);
	txreg=('0' + hunds);
	lcd_print_ch('0' + tens);
	txreg=('0' + tens);
	lcd_print_ch('0' + units);
	txreg=('0' + units);
  }
  
void init_USART()
 {
	txsta=0b00100100;//configured usart
	rcsta=0b10010000;
	spbrg=0b10000001;//=129 for spbrg=9615baud/sec
	trisc=0b11000000;//Warning!!!this must is the True_Value the trisc.
 }

//delineament valuedigit as decthous_thousand_hundreds_dec_unit
void res_valdigit(unsigned int digit)
  {
	unsigned char medium,decthous,thous,hund,dec,unit;
	//FormatTransmitValueEndDigit:65535/->LabView
	unit=digit%10;
	medium=digit/10;
	dec=medium%10;
	medium=medium/10;
	hund=medium%10;
	medium=medium/10;
	thous=medium%10;
	decthous=medium/10;
	//delineament & transmit
	txreg=('0'+decthous);
	delay_time(2,256);//interface_timming tdelay=4T(19660800)^(-1)*13*1*256=1,354ms
	txreg=('0'+thous);
	delay_time(2,256);
	txreg=('0'+hund);
	delay_time(2,256);
	txreg=('0'+dec);
	delay_time(2,256);
	txreg=('0'+unit);
	delay_time(2,256);
    txreg='/';
    delay_time(2,256);
	//delay_time(2,150);//interface_timming tdelay=4T(19660800)^(-1)*13*2*150=793us
  }         