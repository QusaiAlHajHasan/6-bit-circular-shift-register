
_main:

;MyProject.c,6 :: 		void main() {
;MyProject.c,7 :: 		TRISB = 0;           // set direction to be output
	CLRF       TRISB+0
;MyProject.c,8 :: 		TRISD = 0X0F;
	MOVLW      15
	MOVWF      TRISD+0
;MyProject.c,9 :: 		PORTD.F7=1;
	BSF        PORTD+0, 7
;MyProject.c,10 :: 		PORTB=ini_value;
	MOVF       _ini_value+0, 0
	MOVWF      PORTB+0
;MyProject.c,11 :: 		DELAY_Ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;MyProject.c,12 :: 		TRISC=0;
	CLRF       TRISC+0
;MyProject.c,13 :: 		while(1)
L_main1:
;MyProject.c,16 :: 		if(PORTD.F3==0)
	BTFSC      PORTD+0, 3
	GOTO       L_main3
;MyProject.c,18 :: 		x=PORTB<<1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      _x+0
;MyProject.c,19 :: 		PORTB=x;
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;MyProject.c,20 :: 		PORTB.F0=PORTB.F6;
	BTFSC      PORTB+0, 6
	GOTO       L__main12
	BCF        PORTB+0, 0
	GOTO       L__main13
L__main12:
	BSF        PORTB+0, 0
L__main13:
;MyProject.c,21 :: 		PORTB.F6=0;
	BCF        PORTB+0, 6
;MyProject.c,22 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;MyProject.c,24 :: 		DELAY_Ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
;MyProject.c,25 :: 		}
L_main3:
;MyProject.c,26 :: 		if(PORTD.F2==0)
	BTFSC      PORTD+0, 2
	GOTO       L_main5
;MyProject.c,28 :: 		temb.F0=PORTD.F0;
	BTFSC      PORTD+0, 0
	GOTO       L__main14
	BCF        _temb+0, 0
	GOTO       L__main15
L__main14:
	BSF        _temb+0, 0
L__main15:
;MyProject.c,29 :: 		temb.F1=PORTD.F1;
	BTFSC      PORTD+0, 1
	GOTO       L__main16
	BCF        _temb+0, 1
	GOTO       L__main17
L__main16:
	BSF        _temb+0, 1
L__main17:
;MyProject.c,30 :: 		temb=temb*temb;
	MOVF       _temb+0, 0
	MOVWF      R0+0
	MOVF       _temb+0, 0
	MOVWF      R4+0
	CALL       _Mul_8X8_U+0
	MOVF       R0+0, 0
	MOVWF      _temb+0
;MyProject.c,31 :: 		ini_value=temb;
	MOVF       R0+0, 0
	MOVWF      _ini_value+0
	CLRF       _ini_value+1
;MyProject.c,32 :: 		temb=0;
	CLRF       _temb+0
;MyProject.c,33 :: 		PORTB=ini_value;
	MOVF       _ini_value+0, 0
	MOVWF      PORTB+0
;MyProject.c,34 :: 		DELAY_Ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;MyProject.c,35 :: 		}
L_main5:
;MyProject.c,36 :: 		if(PORTB==ini_value)
	MOVLW      0
	XORWF      _ini_value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main18
	MOVF       _ini_value+0, 0
	XORWF      PORTB+0, 0
L__main18:
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;MyProject.c,38 :: 		PORTC.F2=1;
	BSF        PORTC+0, 2
;MyProject.c,39 :: 		DELAY_Ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
;MyProject.c,40 :: 		}
	GOTO       L_main9
L_main7:
;MyProject.c,43 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;MyProject.c,44 :: 		DELAY_Ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
;MyProject.c,45 :: 		}
L_main9:
;MyProject.c,46 :: 		}
	GOTO       L_main1
;MyProject.c,47 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
