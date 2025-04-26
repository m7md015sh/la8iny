import 'package:la8iny/features/auth/data/models/user_model.dart';

abstract class AuthRepo {
  Future<User> login(String email, String password);
}
