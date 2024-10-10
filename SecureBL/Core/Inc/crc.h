#ifndef CRC_HEADER_H
#define CRC_HEADER_H

#include <stdio.h>
#include <stdint.h>

#include "crc_typedefs.h"

void
CRC32_Init (CRC_Handle_t *hcrc);

uint32_t
CRC32_Calculate (CRC_Handle_t *hcrc, uint8_t *data, uint32_t length);

void
CRC32_ResetCRC (CRC_Handle_t *hcrc);

#endif 
