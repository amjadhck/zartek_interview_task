part of 'gmailauth_bloc.dart';

abstract class GmailauthState extends Equatable {}

class Loading extends GmailauthState {
  @override
  List<Object?> get props => [];
}

class Authenticated extends GmailauthState {
  @override
  List<Object?> get props => [];
}

//initial
class UnAuthenticated extends GmailauthState {
  @override
  List<Object?> get props => [];
}

class AuthError extends GmailauthState {
  final String error;

  AuthError(this.error);
  @override
  List<Object?> get props => [error];
}
