;/**************************************************************************//**
; * @file     startup_CMSDK_CM3.s
; * @brief    CMSIS Core Device Startup File for
; *           CMSDK_CM3 Device
; * @version  V3.02
; * @date     15. November 2013
; *
; * @note
; *
; ******************************************************************************/
;/* Copyright (c) 2011 - 2013 ARM LIMITED
;
;   All rights reserved.
;   Redistribution and use in source and binary forms, with or without
;   modification, are permitted provided that the following conditions are met:
;   - Redistributions of source code must retain the above copyright
;     notice, this list of conditions and the following disclaimer.
;   - Redistributions in binary form must reproduce the above copyright
;     notice, this list of conditions and the following disclaimer in the
;     documentation and/or other materials provided with the distribution.
;   - Neither the name of ARM nor the names of its contributors may be used
;     to endorse or promote products derived from this software without
;     specific prior written permission.
; *
;   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
;   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;   ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
;   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
;   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
;   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
;   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;   POSSIBILITY OF SUCH DAMAGE.
;   ---------------------------------------------------------------------------*/
;/*
;//-------- <<< Use Configuration Wizard in Context Menu >>> ------------------
;*/


; <h> Stack Configuration
;   <o> Stack Size (in Bytes) <0x0-0xFFFFFFFF:8>
; </h>

Stack_Size      EQU     0x00000400

                AREA    STACK, NOINIT, READWRITE, ALIGN=3
Stack_Mem       SPACE   Stack_Size
__initial_sp


; <h> Heap Configuration
;   <o>  Heap Size (in Bytes) <0x0-0xFFFFFFFF:8>
; </h>

Heap_Size       EQU     0x00000C00

                AREA    HEAP, NOINIT, READWRITE, ALIGN=3
__heap_base
Heap_Mem        SPACE   Heap_Size
__heap_limit


                PRESERVE8
                THUMB


; Vector Table Mapped to Address 0 at Reset

                AREA    RESET, DATA, READONLY
                EXPORT  __Vectors
                EXPORT  __Vectors_End
                EXPORT  __Vectors_Size

__Vectors       DCD     __initial_sp              ; Top of Stack
                DCD     Reset_Handler             ; Reset Handler
                DCD     NMI_Handler               ; NMI Handler
                DCD     HardFault_Handler         ; Hard Fault Handler
                DCD     MemManage_Handler         ; MPU Fault Handler
                DCD     BusFault_Handler          ; Bus Fault Handler
                DCD     UsageFault_Handler        ; Usage Fault Handler
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     SVC_Handler               ; SVCall Handler
                DCD     DebugMon_Handler          ; Debug Monitor Handler
                DCD     0                         ; Reserved
                DCD     PendSV_Handler            ; PendSV Handler
                DCD     SysTick_Handler           ; SysTick Handler

                ; External Interrupts
                DCD     UART0_Handler             ; UART 0 RX and TX Handler
                DCD     Reserved1_Handler         ; Not Used
                DCD     UART1_Handler             ; UART 1 RX and TX Handler
                DCD     I2C0_Handler              ; I2C 0 Handler
                DCD     I2C1_Handler              ; I2C 1 Handler
                DCD     RTC_Handler               ; RTC Handler
                DCD     PORT0_COMB_Handler        ; GPIO Port 0 Combined Handler
                DCD     PORT1_COMB_Handler        ; GPIO Port 1 Combined Handler
                DCD     TIMER0_Handler            ; TIMER 0 handler
                DCD     TIMER1_Handler            ; TIMER 1 handler
                DCD     DUALTIMER_HANDLER         ; Dual timer handler
                DCD     SPI0_Handler              ; SPI 0 exceptions Handler
                DCD     UARTOVF_Handler           ; UART 0,1,2 Overflow Handler
                DCD     SPI1_Handler               ; SPI 1 Handler
                DCD     QSPI_Handler              ; Quad SPI Handler
                DCD     TSC_Handler               ; TSC handler
                DCD     PORT0_0_Handler           ; GPIO Port 0\1 pin 0 Handler
                DCD     PORT0_1_Handler           ; GPIO Port 0\1 pin 1 Handler
                DCD     PORT0_2_Handler           ; GPIO Port 0\1 pin 2 Handler
                DCD     PORT0_3_Handler           ; GPIO Port 0\1 pin 3 Handler
                DCD     PORT0_4_Handler           ; GPIO Port 0\1 pin 4 Handler
                DCD     PORT0_5_Handler           ; GPIO Port 0\1 pin 5 Handler
                DCD     PORT0_6_Handler           ; GPIO Port 0\1 pin 6 Handler
                DCD     PORT0_7_Handler           ; GPIO Port 0\1 pin 7 Handler
                DCD     PORT0_8_Handler           ; GPIO Port 0\1 pin 8 Handler
                DCD     PORT0_9_Handler           ; GPIO Port 0\1 pin 9 Handler
                DCD     PORT0_10_Handler          ; GPIO Port 0\1 pin 10 Handler
                DCD     PORT0_11_Handler          ; GPIO Port 0\1 pin 11 Handler
                DCD     PORT0_12_Handler          ; GPIO Port 0\1 pin 12 Handler
                DCD     PORT0_13_Handler          ; GPIO Port 0\1 pin 13 Handler
                DCD     PORT0_14_Handler          ; GPIO Port 0\1 pin 14 Handler
                DCD     PORT0_15_Handler          ; GPIO Port 0\1 pin 15 Handler
                DCD     SYSERROR_Handler          ; System Error Handler
                DCD     EFLASH_Handler            ; Embedded Flash Handler
                DCD     CORDIO0_Handler           ; Cordio Handler
                DCD     CORDIO1_Handler           ; Cordio Handler
                DCD     CORDIO2_Handler           ; Cordio Handler
                DCD     CORDIO3_Handler           ; Cordio Handler
                DCD     CORDIO4_Handler           ; Cordio Handler
                DCD     CORDIO5_Handler           ; Cordio Handler
                DCD     CORDIO6_Handler           ; Cordio Handler
                DCD     CORDIO7_Handler           ; Cordio Handler
                DCD     PORT2_COMB_Handler        ; GPIO Port 2 Combined Handler
                DCD     PORT3_COMB_Handler        ; GPIO Port 3 Combined Handler
                DCD     TRNG_Handler              ; Random Number Handler
                DCD     UARTRX2_Handler           ; UART 2 RX Handler
                DCD     UARTTX2_Handler           ; UART 2 TX Handler
                DCD     UARTRX3_Handler           ; UART 3 RX Handler
                DCD     UARTTX3_Handler           ; UART 3 TX Handler
                DCD     ETHERNET_Handler          ; Ethernet Handler
__Vectors_End

__Vectors_Size  EQU     __Vectors_End - __Vectors

                AREA    |.text|, CODE, READONLY


; Reset Handler

Reset_Handler   PROC
                EXPORT  Reset_Handler             [WEAK]
                IMPORT  SystemInit
                IMPORT  __main
                LDR     R0, =SystemInit
                BLX     R0
                LDR     R0, =__main
                BX      R0
                ENDP


; Dummy Exception Handlers (infinite loops which can be modified)

NMI_Handler     PROC
                EXPORT  NMI_Handler               [WEAK]
                B       .
                ENDP
HardFault_Handler\
                PROC
                EXPORT  HardFault_Handler         [WEAK]
                B       .
                ENDP
MemManage_Handler\
                PROC
                EXPORT  MemManage_Handler         [WEAK]
                B       .
                ENDP
BusFault_Handler\
                PROC
                EXPORT  BusFault_Handler          [WEAK]
                B       .
                ENDP
UsageFault_Handler\
                PROC
                EXPORT  UsageFault_Handler        [WEAK]
                B       .
                ENDP
SVC_Handler     PROC
                EXPORT  SVC_Handler               [WEAK]
                B       .
                ENDP
DebugMon_Handler\
                PROC
                EXPORT  DebugMon_Handler          [WEAK]
                B       .
                ENDP
PendSV_Handler  PROC
                EXPORT  PendSV_Handler            [WEAK]
                B       .
                ENDP
SysTick_Handler PROC
                EXPORT  SysTick_Handler           [WEAK]
                B       .
                ENDP

Default_Handler PROC
                EXPORT UART0_Handler              [WEAK]
                EXPORT Reserved1_Handler          [WEAK]
                EXPORT UART1_Handler              [WEAK]
                EXPORT I2C0_Handler               [WEAK]
                EXPORT I2C1_Handler               [WEAK]
                EXPORT RTC_Handler                [WEAK]
                EXPORT PORT0_COMB_Handler         [WEAK]
                EXPORT PORT1_COMB_Handler         [WEAK]
                EXPORT TIMER0_Handler             [WEAK]
                EXPORT TIMER1_Handler             [WEAK]
                EXPORT DUALTIMER_HANDLER          [WEAK]
                EXPORT SPI0_Handler               [WEAK]
                EXPORT UARTOVF_Handler            [WEAK]
                EXPORT SPI1_Handler               [WEAK]
                EXPORT QSPI_Handler               [WEAK]
                EXPORT TSC_Handler                [WEAK]
                EXPORT PORT0_0_Handler            [WEAK]
                EXPORT PORT0_1_Handler            [WEAK]
                EXPORT PORT0_2_Handler            [WEAK]
                EXPORT PORT0_3_Handler            [WEAK]
                EXPORT PORT0_4_Handler            [WEAK]
                EXPORT PORT0_5_Handler            [WEAK]
                EXPORT PORT0_6_Handler            [WEAK]
                EXPORT PORT0_7_Handler            [WEAK]
                EXPORT PORT0_8_Handler            [WEAK]
                EXPORT PORT0_9_Handler            [WEAK]
                EXPORT PORT0_10_Handler           [WEAK]
                EXPORT PORT0_11_Handler           [WEAK]
                EXPORT PORT0_12_Handler           [WEAK]
                EXPORT PORT0_13_Handler           [WEAK]
                EXPORT PORT0_14_Handler           [WEAK]
                EXPORT PORT0_15_Handler           [WEAK]
                EXPORT SYSERROR_Handler           [WEAK]
                EXPORT EFLASH_Handler             [WEAK]
                EXPORT CORDIO0_Handler            [WEAK]
                EXPORT CORDIO1_Handler            [WEAK]
                EXPORT CORDIO2_Handler            [WEAK]
                EXPORT CORDIO3_Handler            [WEAK]
                EXPORT CORDIO4_Handler            [WEAK]
                EXPORT CORDIO5_Handler            [WEAK]
                EXPORT CORDIO6_Handler            [WEAK]
                EXPORT CORDIO7_Handler            [WEAK]
                EXPORT PORT2_COMB_Handler         [WEAK]
                EXPORT PORT3_COMB_Handler         [WEAK]
                EXPORT TRNG_Handler               [WEAK]
                EXPORT UARTRX2_Handler            [WEAK]
                EXPORT UARTTX2_Handler            [WEAK]
                EXPORT UARTRX3_Handler            [WEAK]
                EXPORT UARTTX3_Handler            [WEAK]
                EXPORT ETHERNET_Handler           [WEAK]

UART0_Handler
Reserved1_Handler
UART1_Handler
I2C0_Handler
I2C1_Handler
RTC_Handler
PORT0_COMB_Handler
PORT1_COMB_Handler
TIMER0_Handler
TIMER1_Handler
DUALTIMER_HANDLER
SPI0_Handler
UARTOVF_Handler
SPI1_Handler
QSPI_Handler
TSC_Handler
PORT0_0_Handler
PORT0_1_Handler
PORT0_2_Handler
PORT0_3_Handler
PORT0_4_Handler
PORT0_5_Handler
PORT0_6_Handler
PORT0_7_Handler
PORT0_8_Handler
PORT0_9_Handler
PORT0_10_Handler
PORT0_11_Handler
PORT0_12_Handler
PORT0_13_Handler
PORT0_14_Handler
PORT0_15_Handler
SYSERROR_Handler
EFLASH_Handler
CORDIO0_Handler
CORDIO1_Handler
CORDIO2_Handler
CORDIO3_Handler
CORDIO4_Handler
CORDIO5_Handler
CORDIO6_Handler
CORDIO7_Handler
PORT2_COMB_Handler
PORT3_COMB_Handler
TRNG_Handler
UARTRX2_Handler
UARTTX2_Handler
UARTRX3_Handler
UARTTX3_Handler
ETHERNET_Handler
                B       .

                ENDP


                ALIGN


; User Initial Stack & Heap

                IF      :DEF:__MICROLIB

                EXPORT  __initial_sp
                EXPORT  __heap_base
                EXPORT  __heap_limit

                ELSE

                IMPORT  __use_two_region_memory
                EXPORT  __user_initial_stackheap

__user_initial_stackheap PROC
                LDR     R0, =  Heap_Mem
                LDR     R1, =(Stack_Mem + Stack_Size)
                LDR     R2, = (Heap_Mem +  Heap_Size)
                LDR     R3, = Stack_Mem
                BX      LR
                ENDP

                ALIGN

                ENDIF


                END
