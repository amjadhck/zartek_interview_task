part of 'gmailauth_bloc.dart';

abstract class GmailauthEvent extends Equatable {
  const GmailauthEvent();
  @override
  List<Object> get props => [];
}

class GoogleSignInRequested extends GmailauthEvent {}

class SignOutRequested extends GmailauthEvent {}
