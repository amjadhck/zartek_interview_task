import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../infrastructure/gmail/gmail_signin_repositery.dart';

part 'gmailauth_event.dart';
part 'gmailauth_state.dart';

class GmailauthBloc extends Bloc<GmailauthEvent, GmailauthState> {
  final GmailAuthRepository authRepository;
  GmailauthBloc(this.authRepository) : super(UnAuthenticated()) {
    on<GoogleSignInRequested>((event, emit) async {
      emit(Loading());
      try {
        await authRepository.signInWithGoogle();
        emit(Authenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(UnAuthenticated());
      }
    });
    on<SignOutRequested>((event, emit) async {
      emit(Loading());
      await authRepository.signOut();
      emit(UnAuthenticated());
    });
  }
}
