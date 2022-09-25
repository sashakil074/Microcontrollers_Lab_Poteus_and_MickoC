
_main:

;Seven_segment_0_to_9_display_ca_button_press.c,3 :: 		void main() {
;Seven_segment_0_to_9_display_ca_button_press.c,4 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;Seven_segment_0_to_9_display_ca_button_press.c,5 :: 		TRISB=0x00;
	CLRF       TRISB+0
;Seven_segment_0_to_9_display_ca_button_press.c,6 :: 		PORTB=0x00;
	CLRF       PORTB+0
;Seven_segment_0_to_9_display_ca_button_press.c,7 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;Seven_segment_0_to_9_display_ca_button_press.c,9 :: 		while(1)
L_main0:
;Seven_segment_0_to_9_display_ca_button_press.c,11 :: 		delay_ms(200);
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
;Seven_segment_0_to_9_display_ca_button_press.c,13 :: 		if(portd.f0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main3
;Seven_segment_0_to_9_display_ca_button_press.c,14 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
;Seven_segment_0_to_9_display_ca_button_press.c,16 :: 		if(i<9){
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main10:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;Seven_segment_0_to_9_display_ca_button_press.c,17 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;Seven_segment_0_to_9_display_ca_button_press.c,19 :: 		}
L_main5:
;Seven_segment_0_to_9_display_ca_button_press.c,21 :: 		}
L_main3:
;Seven_segment_0_to_9_display_ca_button_press.c,22 :: 		if(portd.f1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_main6
;Seven_segment_0_to_9_display_ca_button_press.c,23 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;Seven_segment_0_to_9_display_ca_button_press.c,24 :: 		if(i>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
;Seven_segment_0_to_9_display_ca_button_press.c,25 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;Seven_segment_0_to_9_display_ca_button_press.c,27 :: 		}
L_main8:
;Seven_segment_0_to_9_display_ca_button_press.c,29 :: 		}
L_main6:
;Seven_segment_0_to_9_display_ca_button_press.c,31 :: 		portb=CA[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Seven_segment_0_to_9_display_ca_button_press.c,32 :: 		}
	GOTO       L_main0
;Seven_segment_0_to_9_display_ca_button_press.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
