
_main:

;pwm_based_motor_control_speed_increase_decrease.c,2 :: 		void main() {
;pwm_based_motor_control_speed_increase_decrease.c,3 :: 		int duty=0;
	CLRF       main_duty_L0+0
	CLRF       main_duty_L0+1
;pwm_based_motor_control_speed_increase_decrease.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;pwm_based_motor_control_speed_increase_decrease.c,5 :: 		PORTB=0x00;
	CLRF       PORTB+0
;pwm_based_motor_control_speed_increase_decrease.c,6 :: 		TRISC=0x00;
	CLRF       TRISC+0
;pwm_based_motor_control_speed_increase_decrease.c,7 :: 		PORTC=0x00;
	CLRF       PORTC+0
;pwm_based_motor_control_speed_increase_decrease.c,12 :: 		PWM1_INIT(2000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;pwm_based_motor_control_speed_increase_decrease.c,13 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;pwm_based_motor_control_speed_increase_decrease.c,14 :: 		duty=0;
	CLRF       main_duty_L0+0
	CLRF       main_duty_L0+1
;pwm_based_motor_control_speed_increase_decrease.c,15 :: 		PWM1_START();
	CALL       _PWM1_Start+0
;pwm_based_motor_control_speed_increase_decrease.c,16 :: 		PWM1_SET_DUTY(duty);
	MOVF       main_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;pwm_based_motor_control_speed_increase_decrease.c,18 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;pwm_based_motor_control_speed_increase_decrease.c,19 :: 		portb.f1=0;
	BCF        PORTB+0, 1
;pwm_based_motor_control_speed_increase_decrease.c,24 :: 		while(1){
L_main0:
;pwm_based_motor_control_speed_increase_decrease.c,28 :: 		if(portd.f0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;pwm_based_motor_control_speed_increase_decrease.c,30 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;pwm_based_motor_control_speed_increase_decrease.c,31 :: 		if(portd.f0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;pwm_based_motor_control_speed_increase_decrease.c,34 :: 		if(duty<250)
	MOVLW      128
	XORWF      main_duty_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      250
	SUBWF      main_duty_L0+0, 0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;pwm_based_motor_control_speed_increase_decrease.c,37 :: 		duty=duty+10;
	MOVLW      10
	ADDWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       main_duty_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
	MOVF       R0+1, 0
	MOVWF      main_duty_L0+1
;pwm_based_motor_control_speed_increase_decrease.c,38 :: 		PWM1_SET_DUTY(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;pwm_based_motor_control_speed_increase_decrease.c,40 :: 		}
L_main5:
;pwm_based_motor_control_speed_increase_decrease.c,42 :: 		}
L_main4:
;pwm_based_motor_control_speed_increase_decrease.c,43 :: 		}
L_main2:
;pwm_based_motor_control_speed_increase_decrease.c,44 :: 		if(portd.f1==1)
	BTFSS      PORTD+0, 1
	GOTO       L_main6
;pwm_based_motor_control_speed_increase_decrease.c,46 :: 		delay_ms(200);
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
;pwm_based_motor_control_speed_increase_decrease.c,47 :: 		if(portd.f1==1)
	BTFSS      PORTD+0, 1
	GOTO       L_main8
;pwm_based_motor_control_speed_increase_decrease.c,49 :: 		if(duty>=10)
	MOVLW      128
	XORWF      main_duty_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      10
	SUBWF      main_duty_L0+0, 0
L__main12:
	BTFSS      STATUS+0, 0
	GOTO       L_main9
;pwm_based_motor_control_speed_increase_decrease.c,52 :: 		duty=duty-10;
	MOVLW      10
	SUBWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      main_duty_L0+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
	MOVF       R0+1, 0
	MOVWF      main_duty_L0+1
;pwm_based_motor_control_speed_increase_decrease.c,53 :: 		PWM1_SET_DUTY(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;pwm_based_motor_control_speed_increase_decrease.c,54 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;pwm_based_motor_control_speed_increase_decrease.c,55 :: 		}
L_main9:
;pwm_based_motor_control_speed_increase_decrease.c,57 :: 		}
L_main8:
;pwm_based_motor_control_speed_increase_decrease.c,58 :: 		}
L_main6:
;pwm_based_motor_control_speed_increase_decrease.c,62 :: 		}
	GOTO       L_main0
;pwm_based_motor_control_speed_increase_decrease.c,64 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
