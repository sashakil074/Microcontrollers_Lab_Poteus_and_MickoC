
_rotateservo0:

;servo_motor_interfacing_0_90_180.c,1 :: 		void rotateservo0()
;servo_motor_interfacing_0_90_180.c,4 :: 		for(i=0;i<50;i++){
	CLRF       R1+0
	CLRF       R1+1
L_rotateservo00:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__rotateservo021
	MOVLW      50
	SUBWF      R1+0, 0
L__rotateservo021:
	BTFSC      STATUS+0, 0
	GOTO       L_rotateservo01
;servo_motor_interfacing_0_90_180.c,5 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;servo_motor_interfacing_0_90_180.c,6 :: 		delay_us(800);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_rotateservo03:
	DECFSZ     R13+0, 1
	GOTO       L_rotateservo03
	DECFSZ     R12+0, 1
	GOTO       L_rotateservo03
	NOP
;servo_motor_interfacing_0_90_180.c,7 :: 		portb.f0=0  ;
	BCF        PORTB+0, 0
;servo_motor_interfacing_0_90_180.c,8 :: 		delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_rotateservo04:
	DECFSZ     R13+0, 1
	GOTO       L_rotateservo04
	DECFSZ     R12+0, 1
	GOTO       L_rotateservo04
	NOP
	NOP
;servo_motor_interfacing_0_90_180.c,4 :: 		for(i=0;i<50;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo_motor_interfacing_0_90_180.c,9 :: 		}
	GOTO       L_rotateservo00
L_rotateservo01:
;servo_motor_interfacing_0_90_180.c,10 :: 		}
L_end_rotateservo0:
	RETURN
; end of _rotateservo0

_rotateservo90:

;servo_motor_interfacing_0_90_180.c,11 :: 		void rotateservo90()
;servo_motor_interfacing_0_90_180.c,14 :: 		for(i=0;i<50;i++){
	CLRF       R1+0
	CLRF       R1+1
L_rotateservo905:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__rotateservo9023
	MOVLW      50
	SUBWF      R1+0, 0
L__rotateservo9023:
	BTFSC      STATUS+0, 0
	GOTO       L_rotateservo906
;servo_motor_interfacing_0_90_180.c,15 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;servo_motor_interfacing_0_90_180.c,16 :: 		delay_us(1500);
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_rotateservo908:
	DECFSZ     R13+0, 1
	GOTO       L_rotateservo908
	DECFSZ     R12+0, 1
	GOTO       L_rotateservo908
	NOP
;servo_motor_interfacing_0_90_180.c,17 :: 		portb.f0=0 ;
	BCF        PORTB+0, 0
;servo_motor_interfacing_0_90_180.c,18 :: 		delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_rotateservo909:
	DECFSZ     R13+0, 1
	GOTO       L_rotateservo909
	DECFSZ     R12+0, 1
	GOTO       L_rotateservo909
	NOP
	NOP
;servo_motor_interfacing_0_90_180.c,14 :: 		for(i=0;i<50;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo_motor_interfacing_0_90_180.c,19 :: 		}
	GOTO       L_rotateservo905
L_rotateservo906:
;servo_motor_interfacing_0_90_180.c,20 :: 		}
L_end_rotateservo90:
	RETURN
; end of _rotateservo90

_rotateservo180:

;servo_motor_interfacing_0_90_180.c,21 :: 		void rotateservo180()
;servo_motor_interfacing_0_90_180.c,24 :: 		for(i=0;i<50;i++){
	CLRF       R1+0
	CLRF       R1+1
L_rotateservo18010:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__rotateservo18025
	MOVLW      50
	SUBWF      R1+0, 0
L__rotateservo18025:
	BTFSC      STATUS+0, 0
	GOTO       L_rotateservo18011
;servo_motor_interfacing_0_90_180.c,25 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;servo_motor_interfacing_0_90_180.c,26 :: 		delay_us(2200);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      181
	MOVWF      R13+0
L_rotateservo18013:
	DECFSZ     R13+0, 1
	GOTO       L_rotateservo18013
	DECFSZ     R12+0, 1
	GOTO       L_rotateservo18013
	NOP
	NOP
;servo_motor_interfacing_0_90_180.c,27 :: 		portb.f0=0  ;
	BCF        PORTB+0, 0
;servo_motor_interfacing_0_90_180.c,28 :: 		delay_us(17800);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      58
	MOVWF      R13+0
L_rotateservo18014:
	DECFSZ     R13+0, 1
	GOTO       L_rotateservo18014
	DECFSZ     R12+0, 1
	GOTO       L_rotateservo18014
	NOP
;servo_motor_interfacing_0_90_180.c,24 :: 		for(i=0;i<50;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo_motor_interfacing_0_90_180.c,29 :: 		}
	GOTO       L_rotateservo18010
L_rotateservo18011:
;servo_motor_interfacing_0_90_180.c,30 :: 		}
L_end_rotateservo180:
	RETURN
; end of _rotateservo180

_main:

;servo_motor_interfacing_0_90_180.c,31 :: 		void main() {
;servo_motor_interfacing_0_90_180.c,32 :: 		TRISB=0x00;
	CLRF       TRISB+0
;servo_motor_interfacing_0_90_180.c,33 :: 		while(1){
L_main15:
;servo_motor_interfacing_0_90_180.c,34 :: 		rotateservo0();
	CALL       _rotateservo0+0
;servo_motor_interfacing_0_90_180.c,35 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
;servo_motor_interfacing_0_90_180.c,36 :: 		rotateservo90();
	CALL       _rotateservo90+0
;servo_motor_interfacing_0_90_180.c,37 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
;servo_motor_interfacing_0_90_180.c,38 :: 		rotateservo180();
	CALL       _rotateservo180+0
;servo_motor_interfacing_0_90_180.c,39 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
;servo_motor_interfacing_0_90_180.c,40 :: 		}
	GOTO       L_main15
;servo_motor_interfacing_0_90_180.c,41 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
