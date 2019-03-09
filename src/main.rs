#![no_std]
#![no_main]

extern crate cortex_m_rt;
extern crate panic_halt;
extern crate stm32f4;

use cortex_m_rt::entry;
use stm32f4::stm32f407;
//use cortex_m::asm;

//#define IO_LED_GREEN      GPIO_NUM(PORTD, 12)	// GPIO: green led
//#define IO_LED_AMBER      GPIO_NUM(PORTD, 13)	// GPIO: amber led
//#define IO_LED_RED        GPIO_NUM(PORTD, 14)	// GPIO: red led
//#define IO_LED_BLUE       GPIO_NUM(PORTD, 15)	// GPIO: blue led

#[entry]
fn main() -> ! {
    // get handles to the hardware
    let peripherals = stm32f407::Peripherals::take().unwrap();
    let gpiod = &peripherals.GPIOD;
    let rcc = &peripherals.RCC;

    // enable the GPIO clock for IO port D
    rcc.ahb1enr.write(|w| w.gpioden().set_bit());

    //gpiod.crh.write(|w| unsafe{
    //    w.mode13().bits(0b11);
    //    w.cnf13().bits(0b00)
    //});

    loop {
        gpiod.bsrr.write(|w| w.bs12().set_bit());
        cortex_m::asm::delay(2000000);
        gpiod.bsrr.write(|w| w.br12().set_bit());
        cortex_m::asm::delay(2000000);
    }
}
