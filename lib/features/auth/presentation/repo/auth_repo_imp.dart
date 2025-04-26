import 'package:la8iny/features/auth/data/models/user_model.dart';
import 'package:la8iny/features/auth/data/repo/auth_repo.dart';

class AuthRepoImp extends AuthRepo {
  @override
  Future<User> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    return User(name: 'Mohamed Shokry', email: 'M7md015shokry@gmail.com');
  }
}
