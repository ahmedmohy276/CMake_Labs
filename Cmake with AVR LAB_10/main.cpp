
#define F_CPU		(8000000)

#include <avr/io.h>
#include <util/delay.h>


class LED
{
public :
	LED();
	void TOGGLE_LED(void);
};


LED::LED()
{
	DDRA = 0XFF;
	PORTA = 0X00;
}


void LED::TOGGLE_LED(void)
{
    _delay_ms(500);
	PORTA = ~PORTA;
}

int main(void)
{
	LED ledblink;
	while(1)
	{
		ledblink.TOGGLE_LED();
	}
	return 0;
}