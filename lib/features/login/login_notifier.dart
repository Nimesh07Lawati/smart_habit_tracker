import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginState {
  final bool isLoading;
  final String? errorMessage;
  LoginState({this.isLoading = false, this.errorMessage});
  LoginState copyWith({bool? isLoading, String? errorMessage}) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

class LoginNotifier extends Notifier<LoginState> {
  @override
  LoginState build() => LoginState(isLoading: false, errorMessage: null);

  Future<void> Login(String username, String password) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    await Future.delayed(Duration(seconds: 2));
    if (username == "admin" && password == "1234") {
      state = state.copyWith(isLoading: false, errorMessage: null);
    } else {
      state = state.copyWith(
        isLoading: false,
        errorMessage: "Invalid credentials",
      );
    }
  }
}
