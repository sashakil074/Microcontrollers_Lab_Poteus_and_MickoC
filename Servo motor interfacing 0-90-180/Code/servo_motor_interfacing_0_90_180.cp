#line 1 "I:/Microcontroller lab practice/Servo motor interfacing 0-90-180/Code/servo_motor_interfacing_0_90_180.c"
void rotateservo0()
{
 int i;
 for(i=0;i<50;i++){
 portb.f0=1;
 delay_us(800);
 portb.f0=0 ;
 delay_us(19200);
 }
}
void rotateservo90()
{
 int i;
 for(i=0;i<50;i++){
 portb.f0=1;
 delay_us(1500);
 portb.f0=0 ;
 delay_us(18500);
 }
}
void rotateservo180()
{
 int i;
 for(i=0;i<50;i++){
 portb.f0=1;
 delay_us(2200);
 portb.f0=0 ;
 delay_us(17800);
 }
}
void main() {
 TRISB=0x00;
 while(1){
 rotateservo0();
 delay_ms(2000);
 rotateservo90();
 delay_ms(2000);
 rotateservo180();
 delay_ms(2000);
 }
}
