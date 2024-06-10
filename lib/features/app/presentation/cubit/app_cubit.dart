import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';

class AppCubit extends Cubit<int> {
  AppCubit() : super(0);

  void changeIndex({required int index}) {
    emit(index);
  }
}
