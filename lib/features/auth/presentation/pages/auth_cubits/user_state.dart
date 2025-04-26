import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:la8iny/features/auth/data/models/user_model.dart';

enum AuthStatus { initial, loading, success, error }

extension AuthStatusX on AuthStatus {
  bool get isInitial => this == AuthStatus.initial;
  bool get isLoading => this == AuthStatus.loading;
  bool get isSuccess => this == AuthStatus.success;
  bool get isError => this == AuthStatus.error;
}

@immutable
class AuthState extends Equatable {
  final AuthStatus authStatus;
  final User? user;
  final String? message;

  const AuthState({
    this.authStatus = AuthStatus.initial,
    this.user,
    this.message,
  });

  AuthState copyWith({
    AuthStatus? status,
    ValueGetter<User?>? user,
    String? message,
  }) {
    return AuthState(
      authStatus: status ?? authStatus,
      user: user != null ? user() : this.user,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [authStatus, user, message];
}
