
_main:

;servo_motor_interfacing_controlling_with_pwm.c,1 :: 		void main() {
;servo_motor_interfacing_controlling_with_pwm.c,3 :: 		TRISC=0x00;
	CLRF       TRISC+0
;servo_motor_interfacing_controlling_with_pwm.c,4 :: 		PORTC=0x00;
	CLRF       PORTC+0
;servo_motor_interfacing_controlling_with_pwm.c,5 :: 		PWM1_init(2000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;servo_motor_interfacing_controlling_with_pwm.c,6 :: 		duty=10;
	MOVLW      10
	MOVWF      main_duty_L0+0
	MOVLW      0
	MOVWF      main_duty_L0+1
;servo_motor_interfacing_controlling_with_pwm.c,7 :: 		PWM1_start();
	CALL       _PWM1_Start+0
;servo_motor_interfacing_controlling_with_pwm.c,8 :: 		PWM1_SET_DUTY(duty);
	MOVF       main_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;servo_motor_interfacing_controlling_with_pwm.c,10 :: 		while(1){
L_main0:
;servo_motor_interfacing_controlling_with_pwm.c,11 :: 		duty =40;
	MOVLW      40
	MOVWF      main_duty_L0+0
	MOVLW      0
	MOVWF      main_duty_L0+1
;servo_motor_interfacing_controlling_with_pwm.c,12 :: 		PWM1_SET_DUTY(duty);
	MOVLW      40
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;servo_motor_interfacing_controlling_with_pwm.c,13 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;servo_motor_interfacing_controlling_with_pwm.c,14 :: 		duty =75;
	MOVLW      75
	MOVWF      main_duty_L0+0
	MOVLW      0
	MOVWF      main_duty_L0+1
;servo_motor_interfacing_controlling_with_pwm.c,15 :: 		PWM1_SET_DUTY(duty);
	MOVLW      75
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;servo_motor_interfacing_controlling_with_pwm.c,16 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;servo_motor_interfacing_controlling_with_pwm.c,17 :: 		duty =110;
	MOVLW      110
	MOVWF      main_duty_L0+0
	MOVLW      0
	MOVWF      main_duty_L0+1
;servo_motor_interfacing_controlling_with_pwm.c,18 :: 		PWM1_SET_DUTY(duty);
	MOVLW      110
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;servo_motor_interfacing_controlling_with_pwm.c,19 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
;servo_motor_interfacing_controlling_with_pwm.c,20 :: 		}
	GOTO       L_main0
;servo_motor_interfacing_controlling_with_pwm.c,22 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
