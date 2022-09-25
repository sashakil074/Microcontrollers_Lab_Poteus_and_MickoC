
_main:

;four_digit_seven_segment_interfacing.c,4 :: 		void main() {
;four_digit_seven_segment_interfacing.c,5 :: 		int i=0,j=0;
;four_digit_seven_segment_interfacing.c,6 :: 		TRISB=0x00;
	CLRF       TRISB+0
;four_digit_seven_segment_interfacing.c,7 :: 		TRISD=0x00;
	CLRF       TRISD+0
;four_digit_seven_segment_interfacing.c,8 :: 		PORTB=0x00;
	CLRF       PORTB+0
;four_digit_seven_segment_interfacing.c,9 :: 		PORTD=0x00;
	CLRF       PORTD+0
;four_digit_seven_segment_interfacing.c,11 :: 		while(1){
L_main0:
;four_digit_seven_segment_interfacing.c,13 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;four_digit_seven_segment_interfacing.c,14 :: 		portb=  0x89 ;  //H
	MOVLW      137
	MOVWF      PORTB+0
;four_digit_seven_segment_interfacing.c,15 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
;four_digit_seven_segment_interfacing.c,16 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;four_digit_seven_segment_interfacing.c,18 :: 		portd.f1=1;
	BSF        PORTD+0, 1
;four_digit_seven_segment_interfacing.c,19 :: 		portb=  0x86 ;  //E
	MOVLW      134
	MOVWF      PORTB+0
;four_digit_seven_segment_interfacing.c,20 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;four_digit_seven_segment_interfacing.c,21 :: 		portd.f1=0;
	BCF        PORTD+0, 1
;four_digit_seven_segment_interfacing.c,23 :: 		portd.f2=1;
	BSF        PORTD+0, 2
;four_digit_seven_segment_interfacing.c,24 :: 		portb=  0xC7 ;  //H
	MOVLW      199
	MOVWF      PORTB+0
;four_digit_seven_segment_interfacing.c,25 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
;four_digit_seven_segment_interfacing.c,26 :: 		portd.f2=0;
	BCF        PORTD+0, 2
;four_digit_seven_segment_interfacing.c,28 :: 		portd.f6=1;
	BSF        PORTD+0, 6
;four_digit_seven_segment_interfacing.c,29 :: 		portb=  0xC0 ;  //H
	MOVLW      192
	MOVWF      PORTB+0
;four_digit_seven_segment_interfacing.c,30 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;four_digit_seven_segment_interfacing.c,31 :: 		portd.f6=0;
	BCF        PORTD+0, 6
;four_digit_seven_segment_interfacing.c,33 :: 		}
	GOTO       L_main0
;four_digit_seven_segment_interfacing.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
