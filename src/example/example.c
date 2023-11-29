// Autogenerated by jnigen. DO NOT EDIT!

#include <stdint.h>
#include "dartjni.h"
#include "jni.h"

thread_local JNIEnv* jniEnv;
JniContext* jni;

JniContext* (*context_getter)(void);
JNIEnv* (*env_getter)(void);

void setJniGetters(JniContext* (*cg)(void), JNIEnv* (*eg)(void)) {
  context_getter = cg;
  env_getter = eg;
}

// com.example.fluttergen.Example
jclass _c_Example = NULL;

jmethodID _m_Example__new0 = NULL;
FFI_PLUGIN_EXPORT
JniResult Example__new0() {
  load_env();
  load_class_global_ref(&_c_Example, "com/example/fluttergen/Example");
  if (_c_Example == NULL)
    return (JniResult){.value = {.j = 0}, .exception = check_exception()};
  load_method(_c_Example, &_m_Example__new0, "<init>", "()V");
  if (_m_Example__new0 == NULL)
    return (JniResult){.value = {.j = 0}, .exception = check_exception()};
  jobject _result = (*jniEnv)->NewObject(jniEnv, _c_Example, _m_Example__new0);
  return to_global_ref_result(_result);
}

jmethodID _m_Example__sum = NULL;
FFI_PLUGIN_EXPORT
JniResult Example__sum(int32_t a, int32_t b) {
  load_env();
  load_class_global_ref(&_c_Example, "com/example/fluttergen/Example");
  if (_c_Example == NULL)
    return (JniResult){.value = {.j = 0}, .exception = check_exception()};
  load_static_method(_c_Example, &_m_Example__sum, "sum", "(II)I");
  if (_m_Example__sum == NULL)
    return (JniResult){.value = {.j = 0}, .exception = check_exception()};
  int32_t _result =
      (*jniEnv)->CallStaticIntMethod(jniEnv, _c_Example, _m_Example__sum, a, b);
  return (JniResult){.value = {.i = _result}, .exception = check_exception()};
}