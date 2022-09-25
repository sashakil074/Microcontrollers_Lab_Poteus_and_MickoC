void main() {
    TRISB.f0=0x00;  //set portb as output
    portb=0x00;

    while(1){

    portb.f0=0xff;
    delay_ms(1000);
    portb.f0=0x00;
    delay_ms(1000);
    }

}