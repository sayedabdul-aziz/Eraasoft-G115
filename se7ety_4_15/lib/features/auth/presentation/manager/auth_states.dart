class AuthStates {}

class AuthInitialState extends AuthStates {}

// login

class LoginLoadingState extends AuthStates {}

class LoginSuccessState extends AuthStates {
  final String role;

  LoginSuccessState({required this.role});
}

class LoginErrorState extends AuthStates {
  final String error;

  LoginErrorState(this.error);
}

//register

class RegisterLoadingState extends AuthStates {}

class RegisterSuccessState extends AuthStates {}

class RegisterErrorState extends AuthStates {
  final String error;

  RegisterErrorState(this.error);
}

// upadte

class UpdateLoadingState extends AuthStates {}

class UpdateSuccessState extends AuthStates {}

class UpdateErrorState extends AuthStates {
  final String error;

  UpdateErrorState(this.error);
}
