import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/models.dart';
import '../../repositories/repositories.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  StreamSubscription<User>? _userSubscription;

  AuthBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AuthState.unauthenticated()) {
    on<UserChange>(_onUserChange);
    on<LogoutRequest>(_onLogoutRequest);
  }

  void _onUserChange(UserChange event, Emitter<AuthState> emit) {}
  void _onLogoutRequest(LogoutRequest event, Emitter<AuthState> emit) {}
}
