import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/core.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import '../logic.dart';

final authenticationRepositoryProvider = Provider<AuthenticationRepository>((ref) {
  return AuthenticationRepository(dataSource: AuthenticationRetrofitDataSource(dio: DioClient.client));
});

final loginUseCaseProvider = Provider<LoginUseCase>((ref) {
  final repository = ref.watch(authenticationRepositoryProvider);
  return LoginUseCase(repository: repository);
});

final authenticationStateProvider = StateNotifierProvider<AuthenticationStateNotifier, AuthenticationState>((ref) {
  final loginUseCase = ref.watch(loginUseCaseProvider);
  return AuthenticationStateNotifier(ref: ref, loginUseCase: loginUseCase);
});
