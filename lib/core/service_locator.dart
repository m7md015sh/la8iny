import 'package:get_it/get_it.dart';
import 'package:la8iny/features/auth/data/repo/auth_repo.dart';
import 'package:la8iny/features/auth/presentation/pages/auth_cubits/auth_cubit.dart';
import 'package:la8iny/features/auth/presentation/repo/auth_repo_imp.dart';

final sl = GetIt.instance;

void initSl() {
  sl.registerLazySingleton<AuthRepo>(() => AuthRepoImp());
  sl.registerLazySingleton(() => AuthCubit(sl()));
}
