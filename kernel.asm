[BITS 16]	                        ;Tells the assembler that its a 16 bit code
[ORG 0x7C00]	                    ;Origin, tell the assembler that where the code will
				                    ;be in memory after it is been loaded

CALL kmain	                        ;Call the kmain function


TIMES 510 - ($ - $$) db 0	        ;Fill the rest of sector with 0
DW 0xAA55			                ;Add boot signature at the end of bootloader