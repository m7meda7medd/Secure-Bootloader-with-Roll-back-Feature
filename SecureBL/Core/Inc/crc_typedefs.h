#ifndef CRC_TYPEDEFS_H
#define CRC_TYPEDEFS_H

#include <stdint.h>

#define DEFAULT_POLY_VAL 0xEDB88320
#define DEFAULT_INIT_VAL 0xFFFFFFFF

typedef struct{
    uint32_t crc_poly ; 
    uint32_t crc_initval ;
    uint32_t crc_reg ;
}CRC_Handle_t;






#endif
