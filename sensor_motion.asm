;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 6.55
;// License Type  : Standard License
;// Limitations   : PIC12,PIC16 max code size:4096 words, max RAM banks:Unlimited, Non commercial use only
;/////////////////////////////////////////////////////////////////////////////////

	include "P16F877A.inc"
; Heap block 0, size:93 (0x00000193 - 0x000001EF)
__HEAP_BLOCK0_BANK               EQU	0x00000003
__HEAP_BLOCK0_START_OFFSET       EQU	0x00000013
__HEAP_BLOCK0_END_OFFSET         EQU	0x0000006F
; Heap block 1, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK1_BANK               EQU	0x00000000
__HEAP_BLOCK1_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK1_END_OFFSET         EQU	0x00000000
; Heap block 2, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK2_BANK               EQU	0x00000000
__HEAP_BLOCK2_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK2_END_OFFSET         EQU	0x00000000
; Heap block 3, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK3_END_OFFSET         EQU	0x00000000
__div_16_1_00003_arg_a           EQU	0x00000165 ; bytes:2
__div_16_1_00003_arg_b           EQU	0x00000167 ; bytes:2
CompTempVarRet75                 EQU	0x0000016C ; bytes:2
__div_16_1_00003_1_r             EQU	0x00000169 ; bytes:2
__div_16_1_00003_1_i             EQU	0x0000016B ; bytes:1
__rem_16_1_00004_arg_a           EQU	0x00000165 ; bytes:2
__rem_16_1_00004_arg_b           EQU	0x00000167 ; bytes:2
CompTempVarRet77                 EQU	0x0000016C ; bytes:2
__rem_16_1_00004_1_c             EQU	0x00000169 ; bytes:2
__rem_16_1_00004_1_i             EQU	0x0000016B ; bytes:1
__div_8_8_00000_arg_a            EQU	0x00000165 ; bytes:1
__div_8_8_00000_arg_b            EQU	0x00000166 ; bytes:1
CompTempVarRet79                 EQU	0x00000169 ; bytes:1
__div_8_8_00000_1_r              EQU	0x00000167 ; bytes:1
__div_8_8_00000_1_i              EQU	0x00000168 ; bytes:1
__rem_8_8_00000_arg_a            EQU	0x00000165 ; bytes:1
__rem_8_8_00000_arg_b            EQU	0x00000166 ; bytes:1
CompTempVarRet81                 EQU	0x00000169 ; bytes:1
__rem_8_8_00000_1_c              EQU	0x00000167 ; bytes:1
__rem_8_8_00000_1_i              EQU	0x00000168 ; bytes:1
CompGblVar8                      EQU	0x0000007C ; bit:0
CompGblVar9                      EQU	0x0000007C ; bit:1
gbl_status                       EQU	0x00000003 ; bytes:1
gbl_indf                         EQU	0x00000000 ; bytes:1
gbl_tmr0                         EQU	0x00000001 ; bytes:1
gbl_pcl                          EQU	0x00000002 ; bytes:1
gbl_fsr                          EQU	0x00000004 ; bytes:1
gbl_porta                        EQU	0x00000005 ; bytes:1
gbl_portb                        EQU	0x00000006 ; bytes:1
gbl_portc                        EQU	0x00000007 ; bytes:1
gbl_portd                        EQU	0x00000008 ; bytes:1
gbl_porte                        EQU	0x00000009 ; bytes:1
gbl_pclath                       EQU	0x0000000A ; bytes:1
gbl_intcon                       EQU	0x0000000B ; bytes:1
gbl_pir1                         EQU	0x0000000C ; bytes:1
gbl_pir2                         EQU	0x0000000D ; bytes:1
gbl_tmr1l                        EQU	0x0000000E ; bytes:1
gbl_tmr1h                        EQU	0x0000000F ; bytes:1
gbl_t1con                        EQU	0x00000010 ; bytes:1
gbl_tmr2                         EQU	0x00000011 ; bytes:1
gbl_t2con                        EQU	0x00000012 ; bytes:1
gbl_sspbuf                       EQU	0x00000013 ; bytes:1
gbl_sspcon                       EQU	0x00000014 ; bytes:1
gbl_ccpr1l                       EQU	0x00000015 ; bytes:1
gbl_ccpr1h                       EQU	0x00000016 ; bytes:1
gbl_ccp1con                      EQU	0x00000017 ; bytes:1
gbl_rcsta                        EQU	0x00000018 ; bytes:1
gbl_txreg                        EQU	0x00000019 ; bytes:1
gbl_rcreg                        EQU	0x0000001A ; bytes:1
gbl_ccpr2l                       EQU	0x0000001B ; bytes:1
gbl_ccpr2h                       EQU	0x0000001C ; bytes:1
gbl_ccp2con                      EQU	0x0000001D ; bytes:1
gbl_adresh                       EQU	0x0000001E ; bytes:1
gbl_adcon0                       EQU	0x0000001F ; bytes:1
gbl_option_reg                   EQU	0x00000081 ; bytes:1
gbl_trisa                        EQU	0x00000085 ; bytes:1
gbl_trisb                        EQU	0x00000086 ; bytes:1
gbl_trisc                        EQU	0x00000087 ; bytes:1
gbl_trisd                        EQU	0x00000088 ; bytes:1
gbl_trise                        EQU	0x00000089 ; bytes:1
gbl_pie1                         EQU	0x0000008C ; bytes:1
gbl_pie2                         EQU	0x0000008D ; bytes:1
gbl_pcon                         EQU	0x0000008E ; bytes:1
gbl_sspcon2                      EQU	0x00000091 ; bytes:1
gbl_pr2                          EQU	0x00000092 ; bytes:1
gbl_sspadd                       EQU	0x00000093 ; bytes:1
gbl_sspstat                      EQU	0x00000094 ; bytes:1
gbl_txsta                        EQU	0x00000098 ; bytes:1
gbl_spbrg                        EQU	0x00000099 ; bytes:1
gbl_cmcon                        EQU	0x0000009C ; bytes:1
gbl_cvrcon                       EQU	0x0000009D ; bytes:1
gbl_adresl                       EQU	0x0000009E ; bytes:1
gbl_adcon1                       EQU	0x0000009F ; bytes:1
gbl_eedata                       EQU	0x0000010C ; bytes:1
gbl_eeadr                        EQU	0x0000010D ; bytes:1
gbl_eedath                       EQU	0x0000010E ; bytes:1
gbl_eeadrh                       EQU	0x0000010F ; bytes:1
gbl_eecon1                       EQU	0x0000018C ; bytes:1
gbl_eecon2                       EQU	0x0000018D ; bytes:1
gbl_value                        EQU	0x0000007A ; bytes:2
measuremen_0001C_1_ValueEnd      EQU	0x000000E5 ; bytes:2
measuremen_0001C_1_R0            EQU	0x000000E7 ; bytes:2
main_1_R0                        EQU	0x0000007D ; bytes:2
main_1_s                         EQU	0x000000E4 ; bytes:1
gbl_wordmatrix_CGRAM             EQU	0x00000020 ; bytes:45
gbl_LCD_init_value               EQU	0x00000072 ; bytes:5
gbl_mess                         EQU	0x0000004D ; bytes:20
CompGblVar10                     EQU	0x00000061 ; bytes:17
CompGblVar12                     EQU	0x000000A0 ; bytes:17
CompGblVar14                     EQU	0x000000B1 ; bytes:17
CompGblVar16                     EQU	0x000000C2 ; bytes:17
CompGblVar18                     EQU	0x000000D3 ; bytes:17
CompGblVar20                     EQU	0x00000154 ; bytes:16
CompGblVar22                     EQU	0x00000110 ; bytes:17
CompGblVar24                     EQU	0x00000121 ; bytes:17
CompGblVar26                     EQU	0x00000132 ; bytes:17
CompGblVar28                     EQU	0x00000143 ; bytes:17
CompTempVarRet346                EQU	0x00000190 ; bytes:2
Handler_Va_00016_1_ValueDigit    EQU	0x0000016E ; bytes:2
CompTempVar347                   EQU	0x00000192 ; bytes:1
delay_time_00000_arg_size1       EQU	0x00000165 ; bytes:2
delay_time_00000_arg_size0       EQU	0x00000167 ; bytes:2
CompTempVarRet351                EQU	0x00000169 ; bytes:2
delay_time_00000_1_j             EQU	0x00000169 ; bytes:2
delay_time_00000_1_i             EQU	0x0000016B ; bytes:2
LCD_nibble_00015_arg_value       EQU	0x000000EB ; bytes:1
LCD_nibble_00015_arg_mask        EQU	0x000000EC ; bytes:1
LCD_nibble_00015_1_pb            EQU	0x000000ED ; bytes:1
CompTempVar352                   EQU	0x000000EE ; bytes:1
CompTempVar353                   EQU	0x000000EE ; bytes:1
CompTempVar354                   EQU	0x000000EE ; bytes:1
LCD_init_00000_1_i               EQU	0x000000E5 ; bytes:1
LCD_pos_cu_00012_arg_col         EQU	0x000000E5 ; bytes:1
LCD_pos_cu_00012_arg_row         EQU	0x000000E6 ; bytes:1
LCD_print__00011_arg_number      EQU	0x000000E5 ; bytes:1
LCD_print__00011_1_i             EQU	0x000000E6 ; bytes:1
LCD_print__00011_1_pntr          EQU	0x000000E7 ; bytes:2
CompTempVar357                   EQU	0x000000E9 ; bytes:1
CompTempVar358                   EQU	0x000000EA ; bytes:1
CompTempVar361                   EQU	0x000000EB ; bytes:1
res_valdig_00018_arg_digit       EQU	0x000000E9 ; bytes:2
res_valdig_00018_1_medium        EQU	0x000000EB ; bytes:1
res_valdig_00018_1_decthous      EQU	0x000000EC ; bytes:1
res_valdig_00018_1_thous         EQU	0x000000ED ; bytes:1
res_valdig_00018_1_hund          EQU	0x000000EE ; bytes:1
res_valdig_00018_1_dec           EQU	0x000000EF ; bytes:1
res_valdig_00018_1_unit          EQU	0x00000164 ; bytes:1
Int1Context                      EQU	0x0000007F ; bytes:1
Int1BContext                     EQU	0x00000077 ; bytes:3
	ORG 0x00000000
	GOTO	_startup
	ORG 0x00000004
	MOVWF Int1Context
	SWAPF STATUS, W
	MOVWF Int1BContext
	SWAPF PCLATH, W
	MOVWF Int1BContext+D'1'
	SWAPF FSR, W
	MOVWF Int1BContext+D'2'
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	interrupt
	ORG 0x00000010
Handler_Va_00016
; { Handler_Value ; function begin
	BSF STATUS, RP0
	BSF STATUS, RP1
	CLRF CompTempVar347
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVF gbl_adresh, W
	BSF STATUS, RP1
	MOVWF Handler_Va_00016_1_ValueDigit+D'1'
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVF gbl_adresl, W
	BSF STATUS, RP1
	ADDWF CompTempVar347, W
	BCF STATUS, RP0
	MOVWF Handler_Va_00016_1_ValueDigit
	BTFSC STATUS,C
	INCF Handler_Va_00016_1_ValueDigit+D'1', F
	MOVF Handler_Va_00016_1_ValueDigit, W
; VAR_LIFETIME_BEGIN:$ret Id:0x10000A30
	BSF STATUS, RP0
	MOVWF CompTempVarRet346
	BCF STATUS, RP0
	MOVF Handler_Va_00016_1_ValueDigit+D'1', W
	BSF STATUS, RP0
	MOVWF CompTempVarRet346+D'1'
	RETURN
; } Handler_Value function end

	ORG 0x00000029
delay_time_00000
; { delay_time ; function begin
	CLRF delay_time_00000_1_j
	CLRF delay_time_00000_1_j+D'1'
label268438088
	MOVF delay_time_00000_arg_size1+D'1', W
	SUBWF delay_time_00000_1_j+D'1', W
	BTFSS STATUS,Z
	GOTO	label268438089
	MOVF delay_time_00000_arg_size1, W
	SUBWF delay_time_00000_1_j, W
label268438089
	BTFSC STATUS,C
	RETURN
	CLRF delay_time_00000_1_i
	CLRF delay_time_00000_1_i+D'1'
label268438093
	MOVF delay_time_00000_arg_size0+D'1', W
	SUBWF delay_time_00000_1_i+D'1', W
	BTFSS STATUS,Z
	GOTO	label268438094
	MOVF delay_time_00000_arg_size0, W
	SUBWF delay_time_00000_1_i, W
label268438094
	BTFSC STATUS,C
	GOTO	label268438095
	INCF delay_time_00000_1_i, F
	BTFSC STATUS,Z
	INCF delay_time_00000_1_i+D'1', F
	GOTO	label268438093
label268438095
	INCF delay_time_00000_1_j, F
	BTFSC STATUS,Z
	INCF delay_time_00000_1_j+D'1', F
	GOTO	label268438088
	RETURN
; VAR_LIFETIME_BEGIN:$ret Id:0x10000A45
; } delay_time function end

	ORG 0x00000046
__rem_8_8_00000
; { __rem_8_8 ; function begin
; VAR_LIFETIME_BEGIN:$ret Id:0x1000008E
	CLRF CompTempVarRet81
	CLRF __rem_8_8_00000_1_c
	CLRF __rem_8_8_00000_1_i
label268435606
	BTFSC __rem_8_8_00000_1_i,3
	RETURN
	BCF STATUS,C
	RLF __rem_8_8_00000_1_c, F
	RLF __rem_8_8_00000_arg_a, F
	RLF CompTempVarRet81, F
	MOVF __rem_8_8_00000_arg_b, W
	SUBWF CompTempVarRet81, W
	BTFSS STATUS,C
	GOTO	label268435611
	MOVWF CompTempVarRet81
	BSF __rem_8_8_00000_1_c,0
label268435611
	INCF __rem_8_8_00000_1_i, F
	GOTO	label268435606
	RETURN
; } __rem_8_8 function end

	ORG 0x00000058
__rem_16_1_00004
; { __rem_16_16 ; function begin
; VAR_LIFETIME_BEGIN:$ret Id:0x1000005C
	CLRF CompTempVarRet77
	CLRF CompTempVarRet77+D'1'
	CLRF __rem_16_1_00004_1_c
	CLRF __rem_16_1_00004_1_c+D'1'
	CLRF __rem_16_1_00004_1_i
label268435556
	BTFSC __rem_16_1_00004_1_i,4
	RETURN
	BCF STATUS,C
	RLF __rem_16_1_00004_1_c, F
	RLF __rem_16_1_00004_1_c+D'1', F
	RLF __rem_16_1_00004_arg_a, F
	RLF __rem_16_1_00004_arg_a+D'1', F
	RLF CompTempVarRet77, F
	RLF CompTempVarRet77+D'1', F
	MOVF __rem_16_1_00004_arg_b+D'1', W
	SUBWF CompTempVarRet77+D'1', W
	BTFSS STATUS,Z
	GOTO	label268435561
	MOVF __rem_16_1_00004_arg_b, W
	SUBWF CompTempVarRet77, W
label268435561
	BTFSS STATUS,C
	GOTO	label268435562
	MOVF __rem_16_1_00004_arg_b, W
	SUBWF CompTempVarRet77, F
	MOVF __rem_16_1_00004_arg_b+D'1', W
	BTFSS STATUS,C
	DECF CompTempVarRet77+D'1', F
	SUBWF CompTempVarRet77+D'1', F
	BSF __rem_16_1_00004_1_c,0
label268435562
	INCF __rem_16_1_00004_1_i, F
	GOTO	label268435556
	RETURN
; } __rem_16_16 function end

	ORG 0x00000078
__div_8_8_00000
; { __div_8_8 ; function begin
	CLRF __div_8_8_00000_1_r
; VAR_LIFETIME_BEGIN:$ret Id:0x10000076
	CLRF CompTempVarRet79
	CLRF __div_8_8_00000_1_i
label268435582
	BTFSC __div_8_8_00000_1_i,3
	RETURN
	BCF STATUS,C
	RLF CompTempVarRet79, F
	RLF __div_8_8_00000_arg_a, F
	RLF __div_8_8_00000_1_r, F
	MOVF __div_8_8_00000_arg_b, W
	SUBWF __div_8_8_00000_1_r, W
	BTFSS STATUS,C
	GOTO	label268435587
	MOVWF __div_8_8_00000_1_r
	BSF CompTempVarRet79,0
label268435587
	INCF __div_8_8_00000_1_i, F
	GOTO	label268435582
	RETURN
; } __div_8_8 function end

	ORG 0x0000008A
__div_16_1_00003
; { __div_16_16 ; function begin
	CLRF __div_16_1_00003_1_r
	CLRF __div_16_1_00003_1_r+D'1'
; VAR_LIFETIME_BEGIN:$ret Id:0x10000042
	CLRF CompTempVarRet75
	CLRF CompTempVarRet75+D'1'
	CLRF __div_16_1_00003_1_i
label268435530
	BTFSC __div_16_1_00003_1_i,4
	RETURN
	BCF STATUS,C
	RLF CompTempVarRet75, F
	RLF CompTempVarRet75+D'1', F
	RLF __div_16_1_00003_arg_a, F
	RLF __div_16_1_00003_arg_a+D'1', F
	RLF __div_16_1_00003_1_r, F
	RLF __div_16_1_00003_1_r+D'1', F
	MOVF __div_16_1_00003_arg_b+D'1', W
	SUBWF __div_16_1_00003_1_r+D'1', W
	BTFSS STATUS,Z
	GOTO	label268435535
	MOVF __div_16_1_00003_arg_b, W
	SUBWF __div_16_1_00003_1_r, W
label268435535
	BTFSS STATUS,C
	GOTO	label268435536
	MOVF __div_16_1_00003_arg_b, W
	SUBWF __div_16_1_00003_1_r, F
	MOVF __div_16_1_00003_arg_b+D'1', W
	BTFSS STATUS,C
	DECF __div_16_1_00003_1_r+D'1', F
	SUBWF __div_16_1_00003_1_r+D'1', F
	BSF CompTempVarRet75,0
label268435536
	INCF __div_16_1_00003_1_i, F
	GOTO	label268435530
	RETURN
; } __div_16_16 function end

	ORG 0x000000AA
res_valdig_00018
; { res_valdigit ; function begin
	MOVF res_valdig_00018_arg_digit, W
	BCF STATUS, RP0
	BSF STATUS, RP1
	MOVWF __rem_16_1_00004_arg_a
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVF res_valdig_00018_arg_digit+D'1', W
	BCF STATUS, RP0
	BSF STATUS, RP1
	MOVWF __rem_16_1_00004_arg_a+D'1'
	MOVLW 0x0A
	MOVWF __rem_16_1_00004_arg_b
	CLRF __rem_16_1_00004_arg_b+D'1'
	CALL __rem_16_1_00004
; VAR_LIFETIME_END:$ret Id:0x1000005C
	MOVF CompTempVarRet77, W
	MOVWF res_valdig_00018_1_unit
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVF res_valdig_00018_arg_digit, W
	BCF STATUS, RP0
	BSF STATUS, RP1
	MOVWF __div_16_1_00003_arg_a
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVF res_valdig_00018_arg_digit+D'1', W
	BCF STATUS, RP0
	BSF STATUS, RP1
	MOVWF __div_16_1_00003_arg_a+D'1'
	MOVLW 0x0A
	MOVWF __div_16_1_00003_arg_b
	CLRF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
; VAR_LIFETIME_END:$ret Id:0x10000042
	MOVF CompTempVarRet75, W
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF res_valdig_00018_1_medium
	BCF STATUS, RP0
	BSF STATUS, RP1
	MOVWF __rem_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __rem_8_8_00000_arg_b
	CALL __rem_8_8_00000
; VAR_LIFETIME_END:$ret Id:0x1000008E
	MOVF CompTempVarRet81, W
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF res_valdig_00018_1_dec
	MOVF res_valdig_00018_1_medium, W
	BCF STATUS, RP0
	BSF STATUS, RP1
	MOVWF __div_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __div_8_8_00000_arg_b
	CALL __div_8_8_00000
; VAR_LIFETIME_END:$ret Id:0x10000076
	MOVF CompTempVarRet79, W
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF res_valdig_00018_1_medium
	BCF STATUS, RP0
	BSF STATUS, RP1
	MOVWF __rem_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __rem_8_8_00000_arg_b
	CALL __rem_8_8_00000
; VAR_LIFETIME_END:$ret Id:0x1000008E
	MOVF CompTempVarRet81, W
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF res_valdig_00018_1_hund
	MOVF res_valdig_00018_1_medium, W
	BCF STATUS, RP0
	BSF STATUS, RP1
	MOVWF __div_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __div_8_8_00000_arg_b
	CALL __div_8_8_00000
; VAR_LIFETIME_END:$ret Id:0x10000076
	MOVF CompTempVarRet79, W
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF res_valdig_00018_1_medium
	BCF STATUS, RP0
	BSF STATUS, RP1
	MOVWF __rem_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __rem_8_8_00000_arg_b
	CALL __rem_8_8_00000
; VAR_LIFETIME_END:$ret Id:0x1000008E
	MOVF CompTempVarRet81, W
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF res_valdig_00018_1_thous
	MOVF res_valdig_00018_1_medium, W
	BCF STATUS, RP0
	BSF STATUS, RP1
	MOVWF __div_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __div_8_8_00000_arg_b
	CALL __div_8_8_00000
; VAR_LIFETIME_END:$ret Id:0x10000076
	MOVF CompTempVarRet79, W
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF res_valdig_00018_1_decthous
	ADDLW 0x30
	BCF STATUS, RP0
	MOVWF gbl_txreg
	MOVLW 0x02
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	CLRF delay_time_00000_arg_size0
	MOVLW 0x01
	MOVWF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVF res_valdig_00018_1_thous, W
	ADDLW 0x30
	BCF STATUS, RP0
	MOVWF gbl_txreg
	MOVLW 0x02
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	CLRF delay_time_00000_arg_size0
	MOVLW 0x01
	MOVWF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVF res_valdig_00018_1_hund, W
	ADDLW 0x30
	BCF STATUS, RP0
	MOVWF gbl_txreg
	MOVLW 0x02
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	CLRF delay_time_00000_arg_size0
	MOVLW 0x01
	MOVWF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVF res_valdig_00018_1_dec, W
	ADDLW 0x30
	BCF STATUS, RP0
	MOVWF gbl_txreg
	MOVLW 0x02
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	CLRF delay_time_00000_arg_size0
	MOVLW 0x01
	MOVWF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	MOVF res_valdig_00018_1_unit, W
	ADDLW 0x30
	BCF STATUS, RP1
	MOVWF gbl_txreg
	MOVLW 0x02
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	CLRF delay_time_00000_arg_size0
	MOVLW 0x01
	MOVWF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	MOVLW 0x2F
	BCF STATUS, RP1
	MOVWF gbl_txreg
	MOVLW 0x02
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	CLRF delay_time_00000_arg_size0
	MOVLW 0x01
	MOVWF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	RETURN
; } res_valdigit function end

	ORG 0x0000015A
LCD_nibble_00015
; { LCD_nibble_send ; function begin
	SWAPF LCD_nibble_00015_arg_value, F
	MOVLW 0x0F
	ANDWF LCD_nibble_00015_arg_value, W
	MOVWF CompTempVar352
	MOVF LCD_nibble_00015_arg_mask, W
	IORWF CompTempVar352, W
	MOVWF LCD_nibble_00015_1_pb
	MOVLW 0xC0
	BCF STATUS, RP0
	ANDWF gbl_portb, W
	BSF STATUS, RP0
	IORWF LCD_nibble_00015_1_pb, W
	MOVWF LCD_nibble_00015_1_pb
	BCF STATUS, RP0
	MOVWF gbl_portb
	MOVLW 0x01
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	MOVLW 0x01
	MOVWF delay_time_00000_arg_size0
	CLRF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	MOVLW 0x20
	BCF STATUS, RP1
	IORWF gbl_portb, W
	MOVWF gbl_portb
	MOVLW 0x01
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	MOVLW 0x01
	MOVWF delay_time_00000_arg_size0
	CLRF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVF LCD_nibble_00015_1_pb, W
	BCF STATUS, RP0
	MOVWF gbl_portb
	MOVLW 0x01
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	MOVLW 0x69
	MOVWF delay_time_00000_arg_size0
	CLRF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	BSF STATUS, RP0
	BCF STATUS, RP1
	SWAPF LCD_nibble_00015_arg_value, F
	MOVLW 0x0F
	ANDWF LCD_nibble_00015_arg_value, W
	MOVWF CompTempVar353
	MOVF LCD_nibble_00015_arg_mask, W
	IORWF CompTempVar353, W
	MOVWF LCD_nibble_00015_1_pb
	MOVLW 0xC0
	BCF STATUS, RP0
	ANDWF gbl_portb, W
	BSF STATUS, RP0
	MOVWF CompTempVar354
	MOVF LCD_nibble_00015_1_pb, W
	IORWF CompTempVar354, W
	MOVWF LCD_nibble_00015_1_pb
	BCF STATUS, RP0
	MOVWF gbl_portb
	MOVLW 0x01
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	MOVLW 0x01
	MOVWF delay_time_00000_arg_size0
	CLRF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	MOVLW 0x20
	BCF STATUS, RP1
	IORWF gbl_portb, W
	MOVWF gbl_portb
	MOVLW 0x01
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	MOVLW 0x01
	MOVWF delay_time_00000_arg_size0
	CLRF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVF LCD_nibble_00015_1_pb, W
	BCF STATUS, RP0
	MOVWF gbl_portb
	MOVLW 0x01
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	MOVLW 0x69
	MOVWF delay_time_00000_arg_size0
	CLRF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	RETURN
; } LCD_nibble_send function end

	ORG 0x000001BF
transmit_c_00021
; { transmit_code3 ; function begin
	MOVLW 0x64
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_txreg
	MOVLW 0x02
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	MOVLW 0x96
	MOVWF delay_time_00000_arg_size0
	CLRF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	RETURN
; } transmit_code3 function end

	ORG 0x000001CC
transmit_c_00020
; { transmit_code2 ; function begin
	MOVLW 0x63
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_txreg
	MOVLW 0x02
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	MOVLW 0x96
	MOVWF delay_time_00000_arg_size0
	CLRF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	RETURN
; } transmit_code2 function end

	ORG 0x000001D9
transmit_c_0001F
; { transmit_code1 ; function begin
	MOVLW 0x62
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_txreg
	MOVLW 0x02
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	MOVLW 0x96
	MOVWF delay_time_00000_arg_size0
	CLRF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	RETURN
; } transmit_code1 function end

	ORG 0x000001E6
transmit_c_0001E
; { transmit_code ; function begin
	MOVLW 0x61
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_txreg
	MOVLW 0x02
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	MOVLW 0x96
	MOVWF delay_time_00000_arg_size0
	CLRF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	RETURN
; } transmit_code function end

	ORG 0x000001F3
measuremen_0001C
; { measurement_sensora0 ; function begin
	MOVLW 0x84
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF measuremen_0001C_1_R0
	MOVLW 0x67
	MOVWF measuremen_0001C_1_R0+D'1'
	BCF STATUS, RP0
	BSF gbl_adcon0,2
	CALL Handler_Va_00016
	MOVF CompTempVarRet346, W
	BCF STATUS, RP1
	MOVWF measuremen_0001C_1_ValueEnd
; VAR_LIFETIME_END:$ret Id:0x10000A30
	BSF STATUS, RP1
	MOVF CompTempVarRet346+D'1', W
	BCF STATUS, RP1
	MOVWF measuremen_0001C_1_ValueEnd+D'1'
	MOVF measuremen_0001C_1_ValueEnd, W
	MOVWF res_valdig_00018_arg_digit
	MOVF measuremen_0001C_1_ValueEnd+D'1', W
	MOVWF res_valdig_00018_arg_digit+D'1'
	CALL res_valdig_00018
	RETURN
; } measurement_sensora0 function end

	ORG 0x00000209
init_USART_00000
; { init_USART ; function begin
	MOVLW 0x24
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_txsta
	MOVLW 0x90
	BCF STATUS, RP0
	MOVWF gbl_rcsta
	MOVLW 0x81
	BSF STATUS, RP0
	MOVWF gbl_spbrg
	MOVLW 0xC0
	MOVWF gbl_trisc
	RETURN
; } init_USART function end

	ORG 0x00000216
init_ADC_00000
; { init_ADC ; function begin
	MOVLW 0x81
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_adcon0
	MOVLW 0x80
	BSF STATUS, RP0
	MOVWF gbl_adcon1
	MOVLW 0xFF
	MOVWF gbl_trisa
	BCF STATUS, RP0
	CLRF gbl_adresh
	BSF STATUS, RP0
	CLRF gbl_adresl
	BCF STATUS, RP0
	CLRF gbl_pir1
	MOVLW 0x40
	BSF STATUS, RP0
	MOVWF gbl_pie1
	MOVLW 0xC0
	MOVWF gbl_intcon
	RETURN
; } init_ADC function end

	ORG 0x0000022B
LCD_print__00011
; { LCD_print_mess ; function begin
	MOVF LCD_print__00011_arg_number, W
	MOVWF LCD_print__00011_1_i
label268438217
	MOVF LCD_print__00011_arg_number, W
	MOVWF CompTempVar357
	CLRF CompTempVar358
	INCF CompTempVar357, F
	BTFSC STATUS,Z
	INCF CompTempVar358, F
	MOVF CompTempVar357, W
	SUBWF LCD_print__00011_1_i, W
	BTFSC STATUS,C
	MOVF CompTempVar358, W
	BTFSC STATUS,Z
	RETURN
	BCF STATUS, RP0
	BCF	STATUS,IRP
	MOVLW LOW(gbl_mess+D'0')
	MOVWF FSR
	BSF STATUS, RP0
	MOVF LCD_print__00011_1_i, W
	MOVWF CompTempVar361
	BCF STATUS,C
	RLF CompTempVar361, W
	ADDWF FSR, F
	MOVF INDF, W
	MOVWF LCD_print__00011_1_pntr
	INCF FSR, F
	MOVF INDF, W
	MOVWF LCD_print__00011_1_pntr+D'1'
label268438227
	BCF STATUS,IRP
	BTFSC LCD_print__00011_1_pntr+D'1',0
	BSF STATUS,IRP
	MOVF LCD_print__00011_1_pntr, W
	MOVWF FSR
	MOVF INDF, F
	BTFSC STATUS,Z
	GOTO	label268438228
	BCF STATUS,IRP
	BTFSC LCD_print__00011_1_pntr+D'1',0
	BSF STATUS,IRP
	MOVF LCD_print__00011_1_pntr, W
	MOVWF FSR
	MOVF INDF, W
	MOVWF LCD_nibble_00015_arg_value
	MOVLW 0x10
	MOVWF LCD_nibble_00015_arg_mask
	CALL LCD_nibble_00015
	MOVLW 0x01
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	CLRF delay_time_00000_arg_size0
	MOVLW 0x40
	MOVWF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	BSF STATUS, RP0
	BCF STATUS, RP1
	INCF LCD_print__00011_1_pntr, F
	BTFSC STATUS,Z
	INCF LCD_print__00011_1_pntr+D'1', F
	GOTO	label268438227
label268438228
	INCF LCD_print__00011_1_i, F
	GOTO	label268438217
	RETURN
; } LCD_print_mess function end

	ORG 0x0000026A
LCD_pos_cu_00012
; { LCD_pos_cursor ; function begin
	MOVF LCD_pos_cu_00012_arg_row, F
	BTFSS STATUS,Z
	GOTO	label268438195
	MOVLW 0x80
	MOVWF LCD_pos_cu_00012_arg_row
	GOTO	label268438200
label268438195
	MOVF LCD_pos_cu_00012_arg_row, F
	BTFSC STATUS,Z
	GOTO	label268438200
	MOVLW 0xC0
	MOVWF LCD_pos_cu_00012_arg_row
label268438200
	MOVF LCD_pos_cu_00012_arg_col, W
	ADDWF LCD_pos_cu_00012_arg_row, W
	MOVWF LCD_nibble_00015_arg_value
	CLRF LCD_nibble_00015_arg_mask
	CALL LCD_nibble_00015
	RETURN
; } LCD_pos_cursor function end

	ORG 0x0000027B
LCD_init_00000
; { LCD_init ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	CLRF gbl_trisb
	CLRF LCD_init_00000_1_i
label268438170
	MOVLW 0x05
	SUBWF LCD_init_00000_1_i, W
	BTFSC STATUS,C
	GOTO	label268438171
	BCF	STATUS,IRP
	MOVLW LOW(gbl_LCD_init_value+D'0')
	MOVWF FSR
	MOVF LCD_init_00000_1_i, W
	ADDWF FSR, F
	MOVF INDF, W
	MOVWF LCD_nibble_00015_arg_value
	CLRF LCD_nibble_00015_arg_mask
	CALL LCD_nibble_00015
	BSF STATUS, RP0
	BCF STATUS, RP1
	INCF LCD_init_00000_1_i, F
	GOTO	label268438170
label268438171
	MOVLW 0x02
	MOVWF LCD_nibble_00015_arg_value
	CLRF LCD_nibble_00015_arg_mask
	CALL LCD_nibble_00015
	BSF STATUS, RP0
	BCF STATUS, RP1
	CLRF gbl_trisd
	BCF STATUS, RP0
	CLRF gbl_portd
	RETURN
; } LCD_init function end

	ORG 0x0000029A
main
; { main ; function begin
	MOVLW 0x84
	MOVWF main_1_R0
	MOVLW 0x67
	MOVWF main_1_R0+D'1'
	BSF STATUS, RP0
	BCF STATUS, RP1
	CLRF main_1_s
	CALL init_USART_00000
	CALL LCD_init_00000
	CALL init_ADC_00000
	CLRF LCD_pos_cu_00012_arg_col
	CLRF LCD_pos_cu_00012_arg_row
	CALL LCD_pos_cu_00012
	BSF STATUS, RP0
	BCF STATUS, RP1
	CLRF LCD_print__00011_arg_number
	CALL LCD_print__00011
	CLRF LCD_pos_cu_00012_arg_col
	MOVLW 0x01
	MOVWF LCD_pos_cu_00012_arg_row
	CALL LCD_pos_cu_00012
	MOVLW 0x01
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF LCD_print__00011_arg_number
	CALL LCD_print__00011
	MOVLW 0x22
	BCF STATUS, RP0
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	MOVLW 0xFF
	MOVWF delay_time_00000_arg_size0
	MOVWF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	BSF STATUS, RP0
	BCF STATUS, RP1
	CLRF LCD_pos_cu_00012_arg_col
	CLRF LCD_pos_cu_00012_arg_row
	CALL LCD_pos_cu_00012
	MOVLW 0x02
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF LCD_print__00011_arg_number
	CALL LCD_print__00011
	CLRF LCD_pos_cu_00012_arg_col
	MOVLW 0x01
	MOVWF LCD_pos_cu_00012_arg_row
	CALL LCD_pos_cu_00012
	MOVLW 0x03
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF LCD_print__00011_arg_number
	CALL LCD_print__00011
	MOVLW 0x22
	BCF STATUS, RP0
	BSF STATUS, RP1
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	MOVLW 0xFF
	MOVWF delay_time_00000_arg_size0
	MOVWF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
label268437813
	BSF STATUS, RP0
	BCF STATUS, RP1
	INCF main_1_s, W
	MOVWF main_1_s
	DECF main_1_s, W
	BTFSC STATUS,Z
	GOTO	label268437817
	MOVF main_1_s, W
	XORLW 0x02
	BTFSC STATUS,Z
	GOTO	label268437819
	MOVF main_1_s, W
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label268437821
	MOVF main_1_s, W
	XORLW 0x04
	BTFSC STATUS,Z
	GOTO	label268437823
	GOTO	label268437824
label268437817
	CALL transmit_c_0001E
	MOVLW 0x81
	BCF STATUS, RP1
	MOVWF gbl_adcon0
	CALL measuremen_0001C
	CALL transmit_c_0001E
	MOVLW 0x6F
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	CLRF delay_time_00000_arg_size0
	MOVLW 0x04
	MOVWF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	GOTO	label268437824
label268437819
	CALL transmit_c_0001F
	MOVLW 0x89
	BCF STATUS, RP1
	MOVWF gbl_adcon0
	CALL measuremen_0001C
	CALL transmit_c_0001F
	MOVLW 0x6F
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	CLRF delay_time_00000_arg_size0
	MOVLW 0x04
	MOVWF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	GOTO	label268437824
label268437821
	CALL transmit_c_00020
	MOVLW 0x91
	BCF STATUS, RP1
	MOVWF gbl_adcon0
	CALL measuremen_0001C
	CALL transmit_c_00020
	MOVLW 0x6F
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	CLRF delay_time_00000_arg_size0
	MOVLW 0x04
	MOVWF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
	GOTO	label268437824
label268437823
	CALL transmit_c_00021
	MOVLW 0x99
	BCF STATUS, RP1
	MOVWF gbl_adcon0
	CALL measuremen_0001C
	CALL transmit_c_00021
	MOVLW 0x6F
	MOVWF delay_time_00000_arg_size1
	CLRF delay_time_00000_arg_size1+D'1'
	CLRF delay_time_00000_arg_size0
	MOVLW 0x04
	MOVWF delay_time_00000_arg_size0+D'1'
	CALL delay_time_00000
; VAR_LIFETIME_END:$ret Id:0x10000A45
label268437824
	MOVLW 0x05
	BSF STATUS, RP0
	BCF STATUS, RP1
	SUBWF main_1_s, W
	BTFSC STATUS,C
	CLRF main_1_s
	GOTO	label268437813
; } main function end

	ORG 0x0000032B
_startup
	BCF CompGblVar8,0
	BCF CompGblVar9,1
	CLRF gbl_value
	CLRF gbl_value+D'1'
	MOVLW 0x10
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_wordmatrix_CGRAM
	MOVLW 0x0A
	MOVWF gbl_wordmatrix_CGRAM+D'1'
	MOVLW 0x04
	MOVWF gbl_wordmatrix_CGRAM+D'2'
	MOVLW 0x0A
	MOVWF gbl_wordmatrix_CGRAM+D'3'
	MOVLW 0x12
	MOVWF gbl_wordmatrix_CGRAM+D'4'
	MOVLW 0x14
	MOVWF gbl_wordmatrix_CGRAM+D'5'
	MOVLW 0x08
	MOVWF gbl_wordmatrix_CGRAM+D'6'
	CLRF gbl_wordmatrix_CGRAM+D'7'
	MOVLW 0x2A
	MOVWF gbl_wordmatrix_CGRAM+D'8'
	MOVLW 0x04
	MOVWF gbl_wordmatrix_CGRAM+D'9'
	MOVLW 0x0A
	MOVWF gbl_wordmatrix_CGRAM+D'10'
	MOVLW 0x02
	MOVWF gbl_wordmatrix_CGRAM+D'11'
	MOVLW 0x06
	MOVWF gbl_wordmatrix_CGRAM+D'12'
	MOVLW 0x0A
	MOVWF gbl_wordmatrix_CGRAM+D'13'
	MOVLW 0x12
	MOVWF gbl_wordmatrix_CGRAM+D'14'
	MOVLW 0x02
	MOVWF gbl_wordmatrix_CGRAM+D'15'
	CLRF gbl_wordmatrix_CGRAM+D'16'
	MOVLW 0x2A
	MOVWF gbl_wordmatrix_CGRAM+D'17'
	CLRF gbl_wordmatrix_CGRAM+D'18'
	MOVLW 0x06
	MOVWF gbl_wordmatrix_CGRAM+D'19'
	MOVLW 0x08
	MOVWF gbl_wordmatrix_CGRAM+D'20'
	MOVLW 0x08
	MOVWF gbl_wordmatrix_CGRAM+D'21'
	MOVLW 0x04
	MOVWF gbl_wordmatrix_CGRAM+D'22'
	MOVLW 0x0A
	MOVWF gbl_wordmatrix_CGRAM+D'23'
	MOVLW 0x0A
	MOVWF gbl_wordmatrix_CGRAM+D'24'
	MOVLW 0x0E
	MOVWF gbl_wordmatrix_CGRAM+D'25'
	MOVLW 0x2A
	MOVWF gbl_wordmatrix_CGRAM+D'26'
	CLRF gbl_wordmatrix_CGRAM+D'27'
	CLRF gbl_wordmatrix_CGRAM+D'28'
	MOVLW 0x15
	MOVWF gbl_wordmatrix_CGRAM+D'29'
	MOVLW 0x15
	MOVWF gbl_wordmatrix_CGRAM+D'30'
	MOVLW 0x15
	MOVWF gbl_wordmatrix_CGRAM+D'31'
	MOVLW 0x0E
	MOVWF gbl_wordmatrix_CGRAM+D'32'
	CLRF gbl_wordmatrix_CGRAM+D'33'
	CLRF gbl_wordmatrix_CGRAM+D'34'
	MOVLW 0x2A
	MOVWF gbl_wordmatrix_CGRAM+D'35'
	MOVLW 0x0F
	MOVWF gbl_wordmatrix_CGRAM+D'36'
	MOVLW 0x04
	MOVWF gbl_wordmatrix_CGRAM+D'37'
	MOVLW 0x02
	MOVWF gbl_wordmatrix_CGRAM+D'38'
	MOVLW 0x02
	MOVWF gbl_wordmatrix_CGRAM+D'39'
	MOVLW 0x01
	MOVWF gbl_wordmatrix_CGRAM+D'40'
	MOVLW 0x12
	MOVWF gbl_wordmatrix_CGRAM+D'41'
	MOVLW 0x0C
	MOVWF gbl_wordmatrix_CGRAM+D'42'
	CLRF gbl_wordmatrix_CGRAM+D'43'
	MOVLW 0x2A
	MOVWF gbl_wordmatrix_CGRAM+D'44'
	MOVLW 0x33
	MOVWF gbl_LCD_init_value
	MOVLW 0x32
	MOVWF gbl_LCD_init_value+D'1'
	MOVLW 0x2C
	MOVWF gbl_LCD_init_value+D'2'
	MOVLW 0x0F
	MOVWF gbl_LCD_init_value+D'3'
	MOVLW 0x06
	MOVWF gbl_LCD_init_value+D'4'
	MOVLW 0x2F
	MOVWF CompGblVar10
	MOVLW 0x2F
	MOVWF CompGblVar10+D'1'
	MOVLW 0x2F
	MOVWF CompGblVar10+D'2'
	MOVLW 0x50
	MOVWF CompGblVar10+D'3'
	MOVLW 0x72
	MOVWF CompGblVar10+D'4'
	MOVLW 0x6F
	MOVWF CompGblVar10+D'5'
	MOVLW 0x67
	MOVWF CompGblVar10+D'6'
	MOVLW 0x72
	MOVWF CompGblVar10+D'7'
	MOVLW 0x61
	MOVWF CompGblVar10+D'8'
	MOVLW 0x6D
	MOVWF CompGblVar10+D'9'
	MOVLW 0x6D
	MOVWF CompGblVar10+D'10'
	MOVLW 0x65
	MOVWF CompGblVar10+D'11'
	MOVLW 0x64
	MOVWF CompGblVar10+D'12'
	MOVLW 0x2F
	MOVWF CompGblVar10+D'13'
	MOVLW 0x2F
	MOVWF CompGblVar10+D'14'
	MOVLW 0x2F
	MOVWF CompGblVar10+D'15'
	CLRF CompGblVar10+D'16'
	MOVLW HIGH(CompGblVar10+D'0')
	MOVWF gbl_mess+D'1'
	MOVLW LOW(CompGblVar10+D'0')
	MOVWF gbl_mess
	MOVLW 0x2F
	BSF STATUS, RP0
	MOVWF CompGblVar12
	MOVLW 0x73
	MOVWF CompGblVar12+D'1'
	MOVLW 0x65
	MOVWF CompGblVar12+D'2'
	MOVLW 0x6E
	MOVWF CompGblVar12+D'3'
	MOVLW 0x73
	MOVWF CompGblVar12+D'4'
	MOVLW 0x6F
	MOVWF CompGblVar12+D'5'
	MOVLW 0x72
	MOVWF CompGblVar12+D'6'
	MOVLW 0x5F
	MOVWF CompGblVar12+D'7'
	MOVLW 0x5F
	MOVWF CompGblVar12+D'8'
	MOVLW 0x5F
	MOVWF CompGblVar12+D'9'
	MOVLW 0x47
	MOVWF CompGblVar12+D'10'
	MOVLW 0x61
	MOVWF CompGblVar12+D'11'
	MOVLW 0x73
	MOVWF CompGblVar12+D'12'
	MOVLW 0x5F
	MOVWF CompGblVar12+D'13'
	MOVLW 0x43
	MOVWF CompGblVar12+D'14'
	MOVLW 0x4F
	MOVWF CompGblVar12+D'15'
	CLRF CompGblVar12+D'16'
	MOVLW HIGH(CompGblVar12+D'0')
	BCF STATUS, RP0
	MOVWF gbl_mess+D'3'
	MOVLW LOW(CompGblVar12+D'0')
	MOVWF gbl_mess+D'2'
	MOVLW 0x47
	BSF STATUS, RP0
	MOVWF CompGblVar14
	MOVLW 0x61
	MOVWF CompGblVar14+D'1'
	MOVLW 0x73
	MOVWF CompGblVar14+D'2'
	MOVLW 0x43
	MOVWF CompGblVar14+D'3'
	MOVLW 0x6F
	MOVWF CompGblVar14+D'4'
	MOVLW 0x6E
	MOVWF CompGblVar14+D'5'
	MOVLW 0x63
	MOVWF CompGblVar14+D'6'
	MOVLW 0x65
	MOVWF CompGblVar14+D'7'
	MOVLW 0x6E
	MOVWF CompGblVar14+D'8'
	MOVLW 0x74
	MOVWF CompGblVar14+D'9'
	MOVLW 0x72
	MOVWF CompGblVar14+D'10'
	MOVLW 0x61
	MOVWF CompGblVar14+D'11'
	MOVLW 0x74
	MOVWF CompGblVar14+D'12'
	MOVLW 0x69
	MOVWF CompGblVar14+D'13'
	MOVLW 0x6F
	MOVWF CompGblVar14+D'14'
	MOVLW 0x6E
	MOVWF CompGblVar14+D'15'
	CLRF CompGblVar14+D'16'
	MOVLW HIGH(CompGblVar14+D'0')
	BCF STATUS, RP0
	MOVWF gbl_mess+D'5'
	MOVLW LOW(CompGblVar14+D'0')
	MOVWF gbl_mess+D'4'
	MOVLW 0x2E
	BSF STATUS, RP0
	MOVWF CompGblVar16
	MOVLW 0x2E
	MOVWF CompGblVar16+D'1'
	MOVLW 0x2E
	MOVWF CompGblVar16+D'2'
	MOVLW 0x2E
	MOVWF CompGblVar16+D'3'
	MOVLW 0x2E
	MOVWF CompGblVar16+D'4'
	MOVLW 0x2E
	MOVWF CompGblVar16+D'5'
	MOVLW 0x2E
	MOVWF CompGblVar16+D'6'
	MOVLW 0x2E
	MOVWF CompGblVar16+D'7'
	MOVLW 0x2E
	MOVWF CompGblVar16+D'8'
	MOVLW 0x2E
	MOVWF CompGblVar16+D'9'
	MOVLW 0x2E
	MOVWF CompGblVar16+D'10'
	MOVLW 0x2E
	MOVWF CompGblVar16+D'11'
	MOVLW 0x2E
	MOVWF CompGblVar16+D'12'
	MOVLW 0x70
	MOVWF CompGblVar16+D'13'
	MOVLW 0x70
	MOVWF CompGblVar16+D'14'
	MOVLW 0x6D
	MOVWF CompGblVar16+D'15'
	CLRF CompGblVar16+D'16'
	MOVLW HIGH(CompGblVar16+D'0')
	BCF STATUS, RP0
	MOVWF gbl_mess+D'7'
	MOVLW LOW(CompGblVar16+D'0')
	MOVWF gbl_mess+D'6'
	MOVLW 0x2E
	BSF STATUS, RP0
	MOVWF CompGblVar18
	MOVLW 0x2E
	MOVWF CompGblVar18+D'1'
	MOVLW 0x2E
	MOVWF CompGblVar18+D'2'
	MOVLW 0x2E
	MOVWF CompGblVar18+D'3'
	MOVLW 0x2E
	MOVWF CompGblVar18+D'4'
	MOVLW 0x2E
	MOVWF CompGblVar18+D'5'
	MOVLW 0x2E
	MOVWF CompGblVar18+D'6'
	MOVLW 0x2E
	MOVWF CompGblVar18+D'7'
	MOVLW 0x3D
	MOVWF CompGblVar18+D'8'
	MOVLW 0x3E
	MOVWF CompGblVar18+D'9'
	MOVLW 0x31
	MOVWF CompGblVar18+D'10'
	MOVLW 0x30
	MOVWF CompGblVar18+D'11'
	MOVLW 0x30
	MOVWF CompGblVar18+D'12'
	MOVLW 0x70
	MOVWF CompGblVar18+D'13'
	MOVLW 0x70
	MOVWF CompGblVar18+D'14'
	MOVLW 0x6D
	MOVWF CompGblVar18+D'15'
	CLRF CompGblVar18+D'16'
	MOVLW HIGH(CompGblVar18+D'0')
	BCF STATUS, RP0
	MOVWF gbl_mess+D'9'
	MOVLW LOW(CompGblVar18+D'0')
	MOVWF gbl_mess+D'8'
	MOVLW 0x3D
	BSF STATUS, RP1
	MOVWF CompGblVar20
	MOVLW 0x3E
	MOVWF CompGblVar20+D'1'
	MOVLW 0x37
	MOVWF CompGblVar20+D'2'
	MOVLW 0x30
	MOVWF CompGblVar20+D'3'
	MOVLW 0x2E
	MOVWF CompGblVar20+D'4'
	MOVLW 0x2E
	MOVWF CompGblVar20+D'5'
	MOVLW 0x7E
	MOVWF CompGblVar20+D'6'
	MOVLW 0x2E
	MOVWF CompGblVar20+D'7'
	MOVLW 0x2E
	MOVWF CompGblVar20+D'8'
	MOVLW 0x31
	MOVWF CompGblVar20+D'9'
	MOVLW 0x30
	MOVWF CompGblVar20+D'10'
	MOVLW 0x30
	MOVWF CompGblVar20+D'11'
	MOVLW 0x70
	MOVWF CompGblVar20+D'12'
	MOVLW 0x70
	MOVWF CompGblVar20+D'13'
	MOVLW 0x6D
	MOVWF CompGblVar20+D'14'
	CLRF CompGblVar20+D'15'
	MOVLW HIGH(CompGblVar20+D'0')
	BCF STATUS, RP1
	MOVWF gbl_mess+D'11'
	MOVLW LOW(CompGblVar20+D'0')
	MOVWF gbl_mess+D'10'
	MOVLW 0x3D
	BSF STATUS, RP1
	MOVWF CompGblVar22
	MOVLW 0x3E
	MOVWF CompGblVar22+D'1'
	MOVLW 0x32
	MOVWF CompGblVar22+D'2'
	MOVLW 0x30
	MOVWF CompGblVar22+D'3'
	MOVLW 0x2E
	MOVWF CompGblVar22+D'4'
	MOVLW 0x2E
	MOVWF CompGblVar22+D'5'
	MOVLW 0x2E
	MOVWF CompGblVar22+D'6'
	MOVLW 0x7E
	MOVWF CompGblVar22+D'7'
	MOVLW 0x2E
	MOVWF CompGblVar22+D'8'
	MOVLW 0x2E
	MOVWF CompGblVar22+D'9'
	MOVLW 0x2E
	MOVWF CompGblVar22+D'10'
	MOVLW 0x37
	MOVWF CompGblVar22+D'11'
	MOVLW 0x30
	MOVWF CompGblVar22+D'12'
	MOVLW 0x70
	MOVWF CompGblVar22+D'13'
	MOVLW 0x70
	MOVWF CompGblVar22+D'14'
	MOVLW 0x6D
	MOVWF CompGblVar22+D'15'
	CLRF CompGblVar22+D'16'
	MOVLW HIGH(CompGblVar22+D'0')
	BCF STATUS, RP1
	MOVWF gbl_mess+D'13'
	MOVLW LOW(CompGblVar22+D'0')
	MOVWF gbl_mess+D'12'
	MOVLW 0x3A
	BSF STATUS, RP1
	MOVWF CompGblVar24
	MOVLW 0x3D
	MOVWF CompGblVar24+D'1'
	MOVLW 0x3E
	MOVWF CompGblVar24+D'2'
	MOVLW 0x34
	MOVWF CompGblVar24+D'3'
	MOVLW 0x2E
	MOVWF CompGblVar24+D'4'
	MOVLW 0x2E
	MOVWF CompGblVar24+D'5'
	MOVLW 0x2E
	MOVWF CompGblVar24+D'6'
	MOVLW 0x7E
	MOVWF CompGblVar24+D'7'
	MOVLW 0x2E
	MOVWF CompGblVar24+D'8'
	MOVLW 0x2E
	MOVWF CompGblVar24+D'9'
	MOVLW 0x2E
	MOVWF CompGblVar24+D'10'
	MOVLW 0x32
	MOVWF CompGblVar24+D'11'
	MOVLW 0x30
	MOVWF CompGblVar24+D'12'
	MOVLW 0x70
	MOVWF CompGblVar24+D'13'
	MOVLW 0x70
	MOVWF CompGblVar24+D'14'
	MOVLW 0x6D
	MOVWF CompGblVar24+D'15'
	CLRF CompGblVar24+D'16'
	MOVLW HIGH(CompGblVar24+D'0')
	BCF STATUS, RP1
	MOVWF gbl_mess+D'15'
	MOVLW LOW(CompGblVar24+D'0')
	MOVWF gbl_mess+D'14'
	MOVLW 0x2E
	BSF STATUS, RP1
	MOVWF CompGblVar26
	MOVLW 0x2E
	MOVWF CompGblVar26+D'1'
	MOVLW 0x3D
	MOVWF CompGblVar26+D'2'
	MOVLW 0x3E
	MOVWF CompGblVar26+D'3'
	MOVLW 0x31
	MOVWF CompGblVar26+D'4'
	MOVLW 0x2E
	MOVWF CompGblVar26+D'5'
	MOVLW 0x2E
	MOVWF CompGblVar26+D'6'
	MOVLW 0x2E
	MOVWF CompGblVar26+D'7'
	MOVLW 0x7E
	MOVWF CompGblVar26+D'8'
	MOVLW 0x2E
	MOVWF CompGblVar26+D'9'
	MOVLW 0x2E
	MOVWF CompGblVar26+D'10'
	MOVLW 0x2E
	MOVWF CompGblVar26+D'11'
	MOVLW 0x34
	MOVWF CompGblVar26+D'12'
	MOVLW 0x70
	MOVWF CompGblVar26+D'13'
	MOVLW 0x70
	MOVWF CompGblVar26+D'14'
	MOVLW 0x6D
	MOVWF CompGblVar26+D'15'
	CLRF CompGblVar26+D'16'
	MOVLW HIGH(CompGblVar26+D'0')
	BCF STATUS, RP1
	MOVWF gbl_mess+D'17'
	MOVLW LOW(CompGblVar26+D'0')
	MOVWF gbl_mess+D'16'
	MOVLW 0x46
	BSF STATUS, RP1
	MOVWF CompGblVar28
	MOVLW 0x72
	MOVWF CompGblVar28+D'1'
	MOVLW 0x65
	MOVWF CompGblVar28+D'2'
	MOVLW 0x73
	MOVWF CompGblVar28+D'3'
	MOVLW 0x68
	MOVWF CompGblVar28+D'4'
	MOVLW 0x41
	MOVWF CompGblVar28+D'5'
	MOVLW 0x69
	MOVWF CompGblVar28+D'6'
	MOVLW 0x72
	MOVWF CompGblVar28+D'7'
	MOVLW 0x5F
	MOVWF CompGblVar28+D'8'
	MOVLW 0x58
	MOVWF CompGblVar28+D'9'
	MOVLW 0x54
	MOVWF CompGblVar28+D'10'
	MOVLW 0x6F
	MOVWF CompGblVar28+D'11'
	MOVLW 0x78
	MOVWF CompGblVar28+D'12'
	MOVLW 0x69
	MOVWF CompGblVar28+D'13'
	MOVLW 0x63
	MOVWF CompGblVar28+D'14'
	MOVLW 0x21
	MOVWF CompGblVar28+D'15'
	CLRF CompGblVar28+D'16'
	MOVLW HIGH(CompGblVar28+D'0')
	BCF STATUS, RP1
	MOVWF gbl_mess+D'19'
	MOVLW LOW(CompGblVar28+D'0')
	MOVWF gbl_mess+D'18'
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	main
	ORG 0x00000512
interrupt
; { interrupt ; function begin
	MOVLW 0x40
	BCF STATUS, RP0
	BCF STATUS, RP1
	ANDWF gbl_pir1, W
	XORLW 0x40
	BTFSS STATUS,Z
	GOTO	label268438075
	BCF gbl_pir1,6
	CALL Handler_Va_00016
; VAR_LIFETIME_END:$ret Id:0x10000A30
label268438075
	SWAPF Int1BContext+D'2', W
	MOVWF FSR
	SWAPF Int1BContext+D'1', W
	MOVWF PCLATH
	SWAPF Int1BContext, W
	MOVWF STATUS
	SWAPF Int1Context, F
	SWAPF Int1Context, W
	RETFIE
; } interrupt function end

	END
