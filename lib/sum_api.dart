

import 'dart:ffi';
import 'dart:io';

import 'package:fluttergen/api_bindings.dart';
import 'package:fluttergen/example.dart';
import 'package:fluttergen/swift_api_bindings.dart';

int sum(int a, int b){
  if(Platform.isAndroid){
    return Example.sum(a, b);
  }else{
    final lib = SwiftLibrary(DynamicLibrary.open('/Users/drissfoo/Documents/dev/gsg/mobile/flutter/flutterProjects/fluttergen/ios/Runner/third_party/libswiftapi.dylib'));
    //final lib = ObjcLibrary(DynamicLibrary.process());
    return SwiftClass.new1(lib).sum__(a, b);
  }
}