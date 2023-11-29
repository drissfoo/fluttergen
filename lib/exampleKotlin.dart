// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: annotate_overrides
// ignore_for_file: camel_case_extensions
// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: file_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_cast
// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_shown_name

import "dart:isolate" show ReceivePort;
import "dart:ffi" as ffi;
import "package:jni/internal_helpers_for_jnigen.dart";
import "package:jni/jni.dart" as jni;

// Auto-generated initialization code.

final ffi.Pointer<T> Function<T extends ffi.NativeType>(String sym) jniLookup =
    ProtectedJniExtensions.initGeneratedLibrary("exampleKotlin");

/// from: com.example.fluttergen.ExampleKotlin
class ExampleKotlin extends jni.JObject {
  @override
  late final jni.JObjType<ExampleKotlin> $type = type;

  ExampleKotlin.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static const type = $ExampleKotlinType();
  static final _new0 = jniLookup<ffi.NativeFunction<jni.JniResult Function()>>(
          "ExampleKotlin__new0")
      .asFunction<jni.JniResult Function()>();

  /// from: public void <init>()
  /// The returned object must be released after use, by calling the [release] method.
  factory ExampleKotlin() {
    return ExampleKotlin.fromRef(_new0().object);
  }

  static final _sumKtc = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>, ffi.Int32,
                  ffi.Int32)>>("ExampleKotlin__sumKtc")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>, int, int)>();

  /// from: public final int sumKtc(int i, int i1)
  int sumKtc(
    int i,
    int i1,
  ) {
    return _sumKtc(reference, i, i1).integer;
  }
}

final class $ExampleKotlinType extends jni.JObjType<ExampleKotlin> {
  const $ExampleKotlinType();

  @override
  String get signature => r"Lcom/example/fluttergen/ExampleKotlin;";

  @override
  ExampleKotlin fromRef(jni.JObjectPtr ref) => ExampleKotlin.fromRef(ref);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($ExampleKotlinType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($ExampleKotlinType) &&
        other is $ExampleKotlinType;
  }
}
