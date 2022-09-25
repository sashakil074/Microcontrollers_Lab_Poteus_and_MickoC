
_main:

;led_blinking_code.c,1 :: 		void main() {
;led_blinking_code.c,2 :: 		TRISB=0x00;  //set portb as output
	CLRF       TRISB+0
;led_blinking_code.c,3 :: 		portb=0x00;
	CLRF       PORTB+0
;led_blinking_code.c,5 :: 		while(1){
L_main0:
;led_blinking_code.c,7 :: 		portb.f0=0xff;
	BSF        PORTB+0, 0
;led_blinking_code.c,8 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;led_blinking_code.c,9 :: 		portb.f0=0x00;
	BCF        PORTB+0, 0
;led_blinking_code.c,10 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;led_blinking_code.c,11 :: 		}
	GOTO       L_main0
;led_blinking_code.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
