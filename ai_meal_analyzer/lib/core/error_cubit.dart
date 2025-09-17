import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Error {
  final int statusCode;
  final String message;

  Error({required this.statusCode, required this.message});
}

// ValueNotifier<Error?> errorNotifier = ValueNotifier(null)

Error? error;