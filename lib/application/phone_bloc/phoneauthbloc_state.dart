part of 'phoneauthbloc_bloc.dart';

abstract class PhoneauthblocState extends Equatable {
  const PhoneauthblocState();

  @override
  List<Object> get props => [];
}

class PhoneauthblocInitial extends PhoneauthblocState {}

class PhoneAuthLoading extends PhoneauthblocState {}

class PhoneAuthError extends PhoneauthblocState {
  final String error;

  const PhoneAuthError({required this.error});

  @override
  List<Object> get props => [error];
}

class PhoneAuthVerified extends PhoneauthblocState {}

class PhoneAuthCodeSentSuccess extends PhoneauthblocState {
  final String verificationId;
  const PhoneAuthCodeSentSuccess({
    required this.verificationId,
  });
  @override
  List<Object> get props => [verificationId];
}
