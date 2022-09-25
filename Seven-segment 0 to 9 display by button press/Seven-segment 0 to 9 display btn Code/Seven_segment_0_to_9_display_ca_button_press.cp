#line 1 "I:/Microcontroller lab practice/Seven-segment 0 to 9 display by button press/Seven-segment 0 to 9 display btn Code/Seven_segment_0_to_9_display_ca_button_press.c"
char CA[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90} ;
char CC[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F} ;
void main() {
 int i=0;
 TRISB=0x00;
 PORTB=0x00;
 TRISD=0xff;

 while(1)
 {
 delay_ms(200);

 if(portd.f0==1){
 delay_ms(200);

 if(i<9){
 i++;

 }

 }
 if(portd.f1==1){
 delay_ms(200);
 if(i>0){
 i--;

 }

 }

 portb=CA[i];
 }


}
