
void LCD_init();
void LCD_print_mess(unsigned char number);
void LCD_pos_cursor(unsigned char col,unsigned char row);
unsigned int delay_time(unsigned int size1,unsigned int size0);
void readload_CGRAM(unsigned char number);
void SetAddr_DATA_DDRAM(unsigned char number);
void LCD_nibble_send(unsigned char value,
					 unsigned char mask);
void init_ADC(void);
//void Read_ADConv(void);
unsigned int Handler_Value(void);
void delineament_value(unsigned int value);
void init_USART(void);
void res_valdigit(unsigned int digit);
unsigned int Read_ADConv(void);

