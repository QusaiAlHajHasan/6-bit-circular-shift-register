#line 1 "C:/Users/user/Desktop/mmmmm/MyProject.c"

int ini_value=0x07;
char temb=0;
char x;

void main() {
 TRISB = 0;
 TRISD = 0X0F;
 PORTD.F7=1;
 PORTB=ini_value;
 DELAY_Ms(1000);
 TRISC=0;
 while(1)
 {

 if(PORTD.F3==0)
 {
 x=PORTB<<1;
 PORTB=x;
 PORTB.F0=PORTB.F6;
 PORTB.F6=0;
 PORTB.F7=0;

 DELAY_Ms(200);
 }
 if(PORTD.F2==0)
 {
 temb.F0=PORTD.F0;
 temb.F1=PORTD.F1;
 temb=temb*temb;
 ini_value=temb;
 temb=0;
 PORTB=ini_value;
 DELAY_Ms(200);
 }
 if(PORTB==ini_value)
 {
 PORTC.F2=1;
 DELAY_Ms(300);
 }
 else
 {
 PORTC.F2=0;
 DELAY_Ms(300);
 }
 }
}
