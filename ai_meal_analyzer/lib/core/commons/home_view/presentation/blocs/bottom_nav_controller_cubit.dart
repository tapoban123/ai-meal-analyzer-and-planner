import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavControllerCubit extends Cubit<int> {
  BottomNavControllerCubit() : super(0);

  void changeTab(int tabNum) {
    emit(tabNum);
  }
}
