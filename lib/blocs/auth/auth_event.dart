part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LogoutRequest extends AuthEvent {}

class UserChange extends AuthEvent {
  final User user;

  const UserChange(this.user);

  @override
  List<Object> get props => [user];
}
