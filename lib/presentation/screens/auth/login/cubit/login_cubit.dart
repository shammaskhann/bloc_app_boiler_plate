import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.initial());

  void login() {
    emit(LoginState.loading());
    Future.delayed(Duration(seconds: 2), () {
      emit(LoginState.success());
    });
  }
}
