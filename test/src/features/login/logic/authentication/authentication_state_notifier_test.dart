import 'package:clean_architecture_flutter/src/features/login/data/models/authenticate_request_model.dart';
import 'package:clean_architecture_flutter/src/features/login/domain/domain.dart';
import 'package:clean_architecture_flutter/src/features/login/logic/logic.dart';
import 'package:clean_architecture_flutter/src/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRef extends Mock implements Ref {}

class MockLoginUseCase extends Mock implements LoginUseCase {}

class MockIAuthenticateResponseEntity extends Mock implements IAuthenticateResponseEntity {}

class MockFormInputState extends Mock implements FormInputState {}

class MockAnyException extends Mock implements AnyException {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockRef ref;
  late MockLoginUseCase loginUseCase;
  late MockIAuthenticateResponseEntity authenticateResponseEntity;
  late MockFormInputState formInputState;
  late MockAnyException anyException;

  setUpAll(() {
    FlutterSecureStorage.setMockInitialValues({});
  });

  setUp(() {
    ref = MockRef();
    loginUseCase = MockLoginUseCase();
    authenticateResponseEntity = MockIAuthenticateResponseEntity();
    formInputState = MockFormInputState();
    anyException = MockAnyException();
  });

  group('Authenticate State Notifier', () {
    test(
        'Given user '
        'When user login with correct username and password '
        'Then user should login suceessfully', () async {
      const username = 'testusername';
      const password = 'testpassword';
      const token = '<mockfefewftokenfrefregerg;lk;alkrg>';

      when(() => ref.read(formInputStateProvider)).thenReturn(formInputState);
      when(() => formInputState.username!).thenReturn(username);
      when(() => formInputState.password!).thenReturn(password);
      when(
        () => loginUseCase.execute(AuthenticateRequestModel(username: username, password: password)),
      ).thenAnswer((invocation) async => Result.success(authenticateResponseEntity));
      when(() => authenticateResponseEntity.token).thenReturn(token);

      final authStateNotifier = AuthenticationStateNotifier(ref: ref, loginUseCase: loginUseCase);

      final authStates = <AuthenticationState>[];
      authStateNotifier.addListener((state) {
        authStates.add(state);
      });

      await authStateNotifier.login();

      expect([
        AuthenticationState.initial(),
        AuthenticationState.loading(),
        AuthenticationState.data(data: authenticateResponseEntity),
      ], authStates);

      verify(() => loginUseCase.execute(AuthenticateRequestModel(username: username, password: password))).called(1);
    });

    test(
        'Given user'
        'When user login with incorrect username and password'
        'Then user should login fail', () async {
      const username = 'testusername';
      const password = 'testpassword';

      when(() => ref.read(formInputStateProvider)).thenReturn(formInputState);
      when(() => formInputState.username!).thenReturn(username);
      when(() => formInputState.password!).thenReturn(password);
      when(
        () => loginUseCase.execute(AuthenticateRequestModel(username: username, password: password)),
      ).thenAnswer((invocation) async => Result.error(anyException));

      final authStateNotifier = AuthenticationStateNotifier(ref: ref, loginUseCase: loginUseCase);

      final authStates = <AuthenticationState>[];
      authStateNotifier.addListener((state) {
        authStates.add(state);
      });

      await authStateNotifier.login();

      expect([
        AuthenticationState.initial(),
        AuthenticationState.loading(),
        AuthenticationState.error(),
      ], authStates);

      verify(() => loginUseCase.execute(AuthenticateRequestModel(username: username, password: password))).called(1);
    });
  });
}
