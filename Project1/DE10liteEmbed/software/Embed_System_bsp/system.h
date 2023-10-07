/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2_gen2_0' in SOPC Builder design 'Embed'
 * SOPC Builder design path: ../../Embed.sopcinfo
 *
 * Generated: Fri Oct 06 21:00:15 MDT 2023
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x09408820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 80000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x1c
#define ALT_CPU_DCACHE_BYPASS_MASK 0x80000000
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x09404020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 80000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_EXTRA_EXCEPTION_INFO
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 2048
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x1c
#define ALT_CPU_NAME "nios2_gen2_0"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x09404000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x09408820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 80000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x1c
#define NIOS2_DCACHE_BYPASS_MASK 0x80000000
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x09404020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_EXTRA_EXCEPTION_INFO
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 2048
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x1c
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x09404000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SPI
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_AVALON_TIMER
#define __ALTERA_MODULAR_ADC
#define __ALTERA_NIOS2_GEN2
#define __ALTERA_ONCHIP_FLASH
#define __ALTPLL


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "MAX 10"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x8000048
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x8000048
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x8000048
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "Embed"


/*
 * altpll_0 configuration
 *
 */

#define ALTPLL_0_BASE 0x9409230
#define ALTPLL_0_IRQ -1
#define ALTPLL_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ALTPLL_0_NAME "/dev/altpll_0"
#define ALTPLL_0_SPAN 16
#define ALTPLL_0_TYPE "altpll"
#define ALT_MODULE_CLASS_altpll_0 altpll


/*
 * altpll_1 configuration
 *
 */

#define ALTPLL_1_BASE 0x9409220
#define ALTPLL_1_IRQ -1
#define ALTPLL_1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ALTPLL_1_NAME "/dev/altpll_1"
#define ALTPLL_1_SPAN 16
#define ALTPLL_1_TYPE "altpll"
#define ALT_MODULE_CLASS_altpll_1 altpll


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK TIMER_0
#define ALT_TIMESTAMP_CLK TIMER_0


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x8000048
#define JTAG_UART_IRQ 3
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * led_pio configuration
 *
 */

#define ALT_MODULE_CLASS_led_pio altera_avalon_pio
#define LED_PIO_BASE 0x8000030
#define LED_PIO_BIT_CLEARING_EDGE_REGISTER 0
#define LED_PIO_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LED_PIO_CAPTURE 0
#define LED_PIO_DATA_WIDTH 10
#define LED_PIO_DO_TEST_BENCH_WIRING 0
#define LED_PIO_DRIVEN_SIM_VALUE 0
#define LED_PIO_EDGE_TYPE "NONE"
#define LED_PIO_FREQ 40000000
#define LED_PIO_HAS_IN 0
#define LED_PIO_HAS_OUT 1
#define LED_PIO_HAS_TRI 0
#define LED_PIO_IRQ -1
#define LED_PIO_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LED_PIO_IRQ_TYPE "NONE"
#define LED_PIO_NAME "/dev/led_pio"
#define LED_PIO_RESET_VALUE 0
#define LED_PIO_SPAN 16
#define LED_PIO_TYPE "altera_avalon_pio"


/*
 * modular_adc_0_sample_store_csr configuration
 *
 */

#define ALT_MODULE_CLASS_modular_adc_0_sample_store_csr altera_modular_adc
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_BASE 0x9409000
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CORE_VARIANT 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_LENGTH 1
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_0 "CH1"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_1 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_10 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_11 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_12 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_13 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_14 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_15 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_16 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_17 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_18 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_19 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_2 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_20 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_21 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_22 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_23 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_24 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_25 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_26 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_27 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_28 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_29 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_3 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_30 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_31 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_32 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_33 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_34 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_35 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_36 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_37 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_38 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_39 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_4 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_40 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_41 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_42 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_43 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_44 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_45 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_46 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_47 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_48 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_49 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_5 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_50 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_51 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_52 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_53 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_54 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_55 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_56 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_57 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_58 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_59 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_6 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_60 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_61 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_62 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_63 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_7 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_8 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_CSD_SLOT_9 "CH0"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_DUAL_ADC_MODE 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_IRQ 1
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_IRQ_INTERRUPT_CONTROLLER_ID 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_IS_THIS_FIRST_OR_SECOND_ADC 1
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_NAME "/dev/modular_adc_0_sample_store_csr"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_PRESCALER_CH16 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_PRESCALER_CH8 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_REFSEL "External VREF"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_SPAN 512
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_TYPE "altera_modular_adc"
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH0 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH1 1
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH10 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH11 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH12 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH13 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH14 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH15 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH16 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH2 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH3 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH4 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH5 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH6 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH7 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH8 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_CH9 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_TSD 0
#define MODULAR_ADC_0_SAMPLE_STORE_CSR_VREF 2.5


/*
 * modular_adc_0_sequencer_csr configuration
 *
 */

#define ALT_MODULE_CLASS_modular_adc_0_sequencer_csr altera_modular_adc
#define MODULAR_ADC_0_SEQUENCER_CSR_BASE 0x9409240
#define MODULAR_ADC_0_SEQUENCER_CSR_CORE_VARIANT 0
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_LENGTH 1
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_0 "CH1"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_1 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_10 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_11 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_12 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_13 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_14 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_15 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_16 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_17 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_18 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_19 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_2 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_20 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_21 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_22 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_23 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_24 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_25 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_26 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_27 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_28 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_29 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_3 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_30 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_31 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_32 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_33 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_34 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_35 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_36 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_37 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_38 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_39 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_4 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_40 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_41 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_42 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_43 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_44 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_45 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_46 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_47 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_48 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_49 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_5 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_50 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_51 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_52 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_53 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_54 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_55 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_56 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_57 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_58 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_59 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_6 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_60 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_61 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_62 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_63 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_7 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_8 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_CSD_SLOT_9 "CH0"
#define MODULAR_ADC_0_SEQUENCER_CSR_DUAL_ADC_MODE 0
#define MODULAR_ADC_0_SEQUENCER_CSR_IRQ -1
#define MODULAR_ADC_0_SEQUENCER_CSR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MODULAR_ADC_0_SEQUENCER_CSR_IS_THIS_FIRST_OR_SECOND_ADC 1
#define MODULAR_ADC_0_SEQUENCER_CSR_NAME "/dev/modular_adc_0_sequencer_csr"
#define MODULAR_ADC_0_SEQUENCER_CSR_PRESCALER_CH16 0
#define MODULAR_ADC_0_SEQUENCER_CSR_PRESCALER_CH8 0
#define MODULAR_ADC_0_SEQUENCER_CSR_REFSEL "External VREF"
#define MODULAR_ADC_0_SEQUENCER_CSR_SPAN 8
#define MODULAR_ADC_0_SEQUENCER_CSR_TYPE "altera_modular_adc"
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH0 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH1 1
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH10 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH11 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH12 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH13 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH14 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH15 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH16 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH2 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH3 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH4 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH5 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH6 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH7 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH8 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_CH9 0
#define MODULAR_ADC_0_SEQUENCER_CSR_USE_TSD 0
#define MODULAR_ADC_0_SEQUENCER_CSR_VREF 2.5


/*
 * onchip_flash_0_csr configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_flash_0_csr altera_onchip_flash
#define ONCHIP_FLASH_0_CSR_BASE 0x9409248
#define ONCHIP_FLASH_0_CSR_BYTES_PER_PAGE 8192
#define ONCHIP_FLASH_0_CSR_IRQ -1
#define ONCHIP_FLASH_0_CSR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_FLASH_0_CSR_NAME "/dev/onchip_flash_0_csr"
#define ONCHIP_FLASH_0_CSR_READ_ONLY_MODE 0
#define ONCHIP_FLASH_0_CSR_SECTOR1_ENABLED 1
#define ONCHIP_FLASH_0_CSR_SECTOR1_END_ADDR 0x7fff
#define ONCHIP_FLASH_0_CSR_SECTOR1_START_ADDR 0
#define ONCHIP_FLASH_0_CSR_SECTOR2_ENABLED 1
#define ONCHIP_FLASH_0_CSR_SECTOR2_END_ADDR 0xffff
#define ONCHIP_FLASH_0_CSR_SECTOR2_START_ADDR 0x8000
#define ONCHIP_FLASH_0_CSR_SECTOR3_ENABLED 1
#define ONCHIP_FLASH_0_CSR_SECTOR3_END_ADDR 0x6ffff
#define ONCHIP_FLASH_0_CSR_SECTOR3_START_ADDR 0x10000
#define ONCHIP_FLASH_0_CSR_SECTOR4_ENABLED 1
#define ONCHIP_FLASH_0_CSR_SECTOR4_END_ADDR 0xb7fff
#define ONCHIP_FLASH_0_CSR_SECTOR4_START_ADDR 0x70000
#define ONCHIP_FLASH_0_CSR_SECTOR5_ENABLED 1
#define ONCHIP_FLASH_0_CSR_SECTOR5_END_ADDR 0x15ffff
#define ONCHIP_FLASH_0_CSR_SECTOR5_START_ADDR 0xb8000
#define ONCHIP_FLASH_0_CSR_SPAN 8
#define ONCHIP_FLASH_0_CSR_TYPE "altera_onchip_flash"


/*
 * onchip_flash_0_data configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_flash_0_data altera_onchip_flash
#define ONCHIP_FLASH_0_DATA_BASE 0x9200000
#define ONCHIP_FLASH_0_DATA_BYTES_PER_PAGE 8192
#define ONCHIP_FLASH_0_DATA_IRQ -1
#define ONCHIP_FLASH_0_DATA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_FLASH_0_DATA_NAME "/dev/onchip_flash_0_data"
#define ONCHIP_FLASH_0_DATA_READ_ONLY_MODE 0
#define ONCHIP_FLASH_0_DATA_SECTOR1_ENABLED 1
#define ONCHIP_FLASH_0_DATA_SECTOR1_END_ADDR 0x7fff
#define ONCHIP_FLASH_0_DATA_SECTOR1_START_ADDR 0
#define ONCHIP_FLASH_0_DATA_SECTOR2_ENABLED 1
#define ONCHIP_FLASH_0_DATA_SECTOR2_END_ADDR 0xffff
#define ONCHIP_FLASH_0_DATA_SECTOR2_START_ADDR 0x8000
#define ONCHIP_FLASH_0_DATA_SECTOR3_ENABLED 1
#define ONCHIP_FLASH_0_DATA_SECTOR3_END_ADDR 0x6ffff
#define ONCHIP_FLASH_0_DATA_SECTOR3_START_ADDR 0x10000
#define ONCHIP_FLASH_0_DATA_SECTOR4_ENABLED 1
#define ONCHIP_FLASH_0_DATA_SECTOR4_END_ADDR 0xb7fff
#define ONCHIP_FLASH_0_DATA_SECTOR4_START_ADDR 0x70000
#define ONCHIP_FLASH_0_DATA_SECTOR5_ENABLED 1
#define ONCHIP_FLASH_0_DATA_SECTOR5_END_ADDR 0x15ffff
#define ONCHIP_FLASH_0_DATA_SECTOR5_START_ADDR 0xb8000
#define ONCHIP_FLASH_0_DATA_SPAN 1441792
#define ONCHIP_FLASH_0_DATA_TYPE "altera_onchip_flash"


/*
 * onchip_ram configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_ram altera_avalon_onchip_memory2
#define ONCHIP_RAM_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_RAM_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_RAM_BASE 0x9404000
#define ONCHIP_RAM_CONTENTS_INFO ""
#define ONCHIP_RAM_DUAL_PORT 0
#define ONCHIP_RAM_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_RAM_INIT_CONTENTS_FILE "Embed_onchip_ram"
#define ONCHIP_RAM_INIT_MEM_CONTENT 1
#define ONCHIP_RAM_INSTANCE_ID "NONE"
#define ONCHIP_RAM_IRQ -1
#define ONCHIP_RAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_RAM_NAME "/dev/onchip_ram"
#define ONCHIP_RAM_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_RAM_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_RAM_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_RAM_SINGLE_CLOCK_OP 0
#define ONCHIP_RAM_SIZE_MULTIPLE 1
#define ONCHIP_RAM_SIZE_VALUE 16384
#define ONCHIP_RAM_SPAN 16384
#define ONCHIP_RAM_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_RAM_WRITABLE 1


/*
 * sdram configuration
 *
 */

#define ALT_MODULE_CLASS_sdram altera_avalon_new_sdram_controller
#define SDRAM_BASE 0x4000000
#define SDRAM_CAS_LATENCY 3
#define SDRAM_CONTENTS_INFO
#define SDRAM_INIT_NOP_DELAY 0.0
#define SDRAM_INIT_REFRESH_COMMANDS 2
#define SDRAM_IRQ -1
#define SDRAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_IS_INITIALIZED 1
#define SDRAM_NAME "/dev/sdram"
#define SDRAM_POWERUP_DELAY 100.0
#define SDRAM_REFRESH_PERIOD 7.8125
#define SDRAM_REGISTER_DATA_IN 1
#define SDRAM_SDRAM_ADDR_WIDTH 0x19
#define SDRAM_SDRAM_BANK_WIDTH 2
#define SDRAM_SDRAM_COL_WIDTH 10
#define SDRAM_SDRAM_DATA_WIDTH 16
#define SDRAM_SDRAM_NUM_BANKS 4
#define SDRAM_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_SDRAM_ROW_WIDTH 13
#define SDRAM_SHARED_DATA 0
#define SDRAM_SIM_MODEL_BASE 1
#define SDRAM_SPAN 67108864
#define SDRAM_STARVATION_INDICATOR 0
#define SDRAM_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_TYPE "altera_avalon_new_sdram_controller"
#define SDRAM_T_AC 5.4
#define SDRAM_T_MRD 3
#define SDRAM_T_RCD 15.0
#define SDRAM_T_RFC 70.0
#define SDRAM_T_RP 15.0
#define SDRAM_T_WR 14.0


/*
 * slide_pio configuration
 *
 */

#define ALT_MODULE_CLASS_slide_pio altera_avalon_pio
#define SLIDE_PIO_BASE 0x8000020
#define SLIDE_PIO_BIT_CLEARING_EDGE_REGISTER 0
#define SLIDE_PIO_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SLIDE_PIO_CAPTURE 1
#define SLIDE_PIO_DATA_WIDTH 10
#define SLIDE_PIO_DO_TEST_BENCH_WIRING 1
#define SLIDE_PIO_DRIVEN_SIM_VALUE 1023
#define SLIDE_PIO_EDGE_TYPE "ANY"
#define SLIDE_PIO_FREQ 40000000
#define SLIDE_PIO_HAS_IN 1
#define SLIDE_PIO_HAS_OUT 0
#define SLIDE_PIO_HAS_TRI 0
#define SLIDE_PIO_IRQ 4
#define SLIDE_PIO_IRQ_INTERRUPT_CONTROLLER_ID 0
#define SLIDE_PIO_IRQ_TYPE "EDGE"
#define SLIDE_PIO_NAME "/dev/slide_pio"
#define SLIDE_PIO_RESET_VALUE 0
#define SLIDE_PIO_SPAN 16
#define SLIDE_PIO_TYPE "altera_avalon_pio"


/*
 * spi_0 configuration
 *
 */

#define ALT_MODULE_CLASS_spi_0 altera_avalon_spi
#define SPI_0_BASE 0x9409200
#define SPI_0_CLOCKMULT 1
#define SPI_0_CLOCKPHASE 1
#define SPI_0_CLOCKPOLARITY 1
#define SPI_0_CLOCKUNITS "Hz"
#define SPI_0_DATABITS 8
#define SPI_0_DATAWIDTH 16
#define SPI_0_DELAYMULT "1.0E-9"
#define SPI_0_DELAYUNITS "ns"
#define SPI_0_EXTRADELAY 0
#define SPI_0_INSERT_SYNC 0
#define SPI_0_IRQ 0
#define SPI_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define SPI_0_ISMASTER 1
#define SPI_0_LSBFIRST 0
#define SPI_0_NAME "/dev/spi_0"
#define SPI_0_NUMSLAVES 1
#define SPI_0_PREFIX "spi_"
#define SPI_0_SPAN 32
#define SPI_0_SYNC_REG_DEPTH 2
#define SPI_0_TARGETCLOCK 128000u
#define SPI_0_TARGETSSDELAY "0.0"
#define SPI_0_TYPE "altera_avalon_spi"


/*
 * sysid configuration
 *
 */

#define ALT_MODULE_CLASS_sysid altera_avalon_sysid_qsys
#define SYSID_BASE 0x8000040
#define SYSID_ID 0
#define SYSID_IRQ -1
#define SYSID_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_NAME "/dev/sysid"
#define SYSID_SPAN 8
#define SYSID_TIMESTAMP 1696635728
#define SYSID_TYPE "altera_avalon_sysid_qsys"


/*
 * timer_0 configuration
 *
 */

#define ALT_MODULE_CLASS_timer_0 altera_avalon_timer
#define TIMER_0_ALWAYS_RUN 0
#define TIMER_0_BASE 0x8000000
#define TIMER_0_COUNTER_SIZE 32
#define TIMER_0_FIXED_PERIOD 0
#define TIMER_0_FREQ 40000000
#define TIMER_0_IRQ 2
#define TIMER_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_0_LOAD_VALUE 39999
#define TIMER_0_MULT 0.001
#define TIMER_0_NAME "/dev/timer_0"
#define TIMER_0_PERIOD 1
#define TIMER_0_PERIOD_UNITS "ms"
#define TIMER_0_RESET_OUTPUT 0
#define TIMER_0_SNAPSHOT 1
#define TIMER_0_SPAN 32
#define TIMER_0_TICKS_PER_SEC 1000
#define TIMER_0_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_0_TYPE "altera_avalon_timer"

#endif /* __SYSTEM_H_ */
