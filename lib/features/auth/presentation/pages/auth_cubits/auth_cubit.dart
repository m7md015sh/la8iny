import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la8iny/features/auth/data/models/user_model.dart';
import 'package:la8iny/features/auth/data/repo/auth_repo.dart';

import 'user_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepo) : super(const AuthState());
  final AuthRepo _authRepo;

  void login(String email, String password) async {
    emit(state.copyWith(status: AuthStatus.loading));
    await Future.delayed(const Duration(seconds: 2));
    try {
      final user = _authRepo.login(email, password);
      emit(
        state.copyWith(
          status: AuthStatus.success,
          user: () => User(name: 'mohamed shokry', email: 'test@test.com'),
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: AuthStatus.error, message: e.toString()));
    }
  }
}
