#include "native_math.h"

VALUE rb_mNativeMath;

void
Init_native_math(void) {
  rb_mNativeMath = rb_define_module("NativeMath");
  rb_define_singleton_method(rb_mNativeMath, "add", method_native_math_add, 2);
}

VALUE method_native_math_add(VALUE self, VALUE n, VALUE m) {
  int c_n = NUM2INT(n);
  int c_m = NUM2INT(m);
  int c_result = c_n + c_m;
  VALUE result = INT2NUM(c_result);
  return result;
}
