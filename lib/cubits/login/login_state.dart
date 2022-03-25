part of 'login_cubit.dart';

enum LoginStatus { initial, submitting, success, error }

class LoginState extends Equatable {
  final String email;
  final String password;
  final String errorMessage;
  final LoginStatus status;

  const LoginState({
    required this.email,
    required this.password,
    required this.status,
    required this.errorMessage,
  });

  factory LoginState.initial() {
    return const LoginState(
      email: '',
      password: '',
      errorMessage: '',
      status: LoginStatus.initial,
    );
  }

  LoginState copyWith({
    String? email,
    String? password,
    String? errorMessage,
    LoginStatus? status,
  }) {
    return LoginState(
        email: email ?? this.email,
        password: password ?? this.password,
        errorMessage: errorMessage ?? this.errorMessage,
        status: status ?? this.status);
  }

  @override
  List<Object> get props => [email, password, errorMessage, status];
}
