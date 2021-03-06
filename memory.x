/* Memory for STM32F407VG with 1024KiB FLASH, 128KiB RAM */

MEMORY
{
	FLASH : ORIGIN = 0x08000000, LENGTH = 1024K
	RAM : ORIGIN = 0x20000000, LENGTH = 128K
	CCRAM : ORIGIN = 0x10000000, LENGTH = 64K
}

_stack_start = ORIGIN(RAM) + LENGTH(RAM);
