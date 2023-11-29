

import 'dart:ffi';
import 'dart:io';

import 'package:fluttergen/api_bindings.dart';
import 'package:fluttergen/example.dart';

int sum(int a, int b){
  if(Platform.isAndroid){
    return Example.sum(a, b);
  }else{
    final lib = SwiftLibrary(DynamicLibrary.process());
    final exa = ExampleObjc.alloc(lib);

    return ExampleObjc.add_to_(lib, a, b);
  }
}