
_main:

;Seven_segment_0_to_9_display_common_cathode.c,3 :: 		void main() {
;Seven_segment_0_to_9_display_common_cathode.c,4 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;Seven_segment_0_to_9_display_common_cathode.c,5 :: 		TRISB=0x00;
	CLRF       TRISB+0
;Seven_segment_0_to_9_display_common_cathode.c,6 :: 		PORTB=0x00;
	CLRF       PORTB+0
;Seven_segment_0_to_9_display_common_cathode.c,8 :: 		while(1)
L_main0:
;Seven_segment_0_to_9_display_common_cathode.c,10 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
;Seven_segment_0_to_9_display_common_cathode.c,11 :: 		for(i=0;i<=9;i++)
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main3:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main8
	MOVF       main_i_L0+0, 0
	SUBLW      9
L__main8:
	BTFSS      STATUS+0, 0
	GOTO       L_main4
;Seven_segment_0_to_9_display_common_cathode.c,13 :: 		portb=CC[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _CC+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Seven_segment_0_to_9_display_common_cathode.c,14 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;Seven_segment_0_to_9_display_common_cathode.c,11 :: 		for(i=0;i<=9;i++)
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;Seven_segment_0_to_9_display_common_cathode.c,15 :: 		}
	GOTO       L_main3
L_main4:
;Seven_segment_0_to_9_display_common_cathode.c,16 :: 		}
	GOTO       L_main0
;Seven_segment_0_to_9_display_common_cathode.c,19 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
