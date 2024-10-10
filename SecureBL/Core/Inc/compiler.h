 /******************************************************************************
 * File Name:    Compiler.h
 *
 * Description:  This file contains the definitions and macros specified by
 *               AUTOSAR for the abstraction of compiler specific keywords.
 *
 ******************************************************************************/

#ifndef COMPILER_H
#define COMPILER_H

#define APPL_CODE

#define APPL_DATA

#define CODE

#define AUTOMATIC

#define TYPEDEF

#define STATIC                                    static

#define LOCAL_INLINE                              static inline

#define NULL_PTR                                  ((void *)0)

#define INLINE                                    inline

#define NORETURN_FUNC(rettype, memclass)          rettype

#define FUNC(rettype, memclass)                   rettype

#define EXTERN_FUNC(_rettype, _memclass)          extern _rettype

#define P2VAR(ptrtype, memclass, ptrclass)        ptrtype *

#define P2CONST(ptrtype, memclass, ptrclass)      const ptrtype *

#define CONSTP2VAR(ptrtype, memclass, ptrclass)   ptrtype * const

#define CONSTP2CONST(ptrtype, memclass, ptrclass) const ptrtype * const

#define P2FUNC(rettype, ptrclass, fctname)        rettype (*fctname)

#define CONST(type, memclass)                     const type

#define VAR(type, memclass)                       type

#define FUNC_P2CONST(rettype, ptrclass, memclass) const ptrclass rettype * memclass


#endif /* COMPILER_H */
