import 'package:dio/dio.dart';
import 'package:flutter_edu_first_task/api/api_client.dart';
import 'package:flutter_edu_first_task/data/models/login_request_model.dart';
import 'package:flutter_edu_first_task/data/models/token_request_model.dart';
import 'package:flutter_edu_first_task/data/models/token_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.loading()) {
    on<_Login>((event, emit) async {
      emit(const LoginState.loading());
      try {
        final TokenResponseModel tokenResponse = await ApiClient(Dio()).login(
          LoginRequestModel(email: event.email, password: event.password),
        );
        /* TODO: 토큰 저장 */
        emit(const LoginState.loggedIn());
      } catch (e) {
        emit(LoginState.error(e.toString()));
      }
    });
    on<_Logout>((event, emit) async {
      /* TODO: 토큰 삭제 */
      emit(const LoginState.loggedOut());
    });
    on<_ValidateToken>((event, emit) async {
      try {
        final TokenResponseModel tokenResponse = await ApiClient(Dio()).refresh(
          TokenRequestModel(refreshToken: event.refreshToken),
        ); /* TODO: event.refreshToken -> storage에 있는 refreshToken */
        /* TODO: 토큰 저장 */
        emit(const LoginState.loggedIn());
      } catch (e) {
        emit(LoginState.error(e.toString()));
      }
    });
  }
}

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login(String email, String password) = _Login;
  const factory LoginEvent.logout() = _Logout;
  const factory LoginEvent.validateToken(String refreshToken) = _ValidateToken;
}

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState.loading() = _Loading;
  const factory LoginState.loggedOut() = _LoggedOut;
  const factory LoginState.loggedIn() = _LoggedIn;
  const factory LoginState.error(String error) = _Error;
}
