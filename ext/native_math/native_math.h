#ifndef NATIVE_MATH_H
#define NATIVE_MATH_H 1

#include "ruby.h"

void Init_native_math(void);
VALUE method_native_math_add(VALUE self, VALUE n, VALUE m);

extern VALUE rb_mNativeMath;

#endif /* NATIVE_MATH_H */
