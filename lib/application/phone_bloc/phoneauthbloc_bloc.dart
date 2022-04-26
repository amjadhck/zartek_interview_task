import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../infrastructure/phone/phone_auth_repositry.dart';

part 'phoneauthbloc_event.dart';
part 'phoneauthbloc_state.dart';

class PhoneauthblocBloc extends Bloc<PhoneauthblocEvent, PhoneauthblocState> {
  final PhoneAuthRepository phoneAuthRepository;
  final auth = FirebaseAuth.instance;
  PhoneauthblocBloc(this.phoneAuthRepository) : super(PhoneauthblocInitial()) {
    on<PhoneauthblocEvent>((event, emit) {
      on<SendOtpToPhoneEvent>(_onSendOtp);
      on<VerifySentOtpEvent>(_onVerifyOtp);
      on<OnPhoneOtpSent>((event, emit) =>
          emit(PhoneAuthCodeSentSuccess(verificationId: event.verificationId)));

      on<OnPhoneAuthErrorEvent>(
          (event, emit) => emit(PhoneAuthError(error: event.error)));

      on<OnPhoneAuthVerificationCompleteEvent>(_loginWithCredential);
    });
  }
  FutureOr<void> _onSendOtp(
      SendOtpToPhoneEvent event, Emitter<PhoneauthblocState> emit) async {
    emit(PhoneAuthLoading());
    try {
      await phoneAuthRepository.verifyPhone(
        phoneNumber: event.phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          add(OnPhoneAuthVerificationCompleteEvent(credential: credential));
        },
        codeSent: (String verificationId, int? resendToken) {
          add(OnPhoneOtpSent(
              verificationId: verificationId, token: resendToken));
        },
        verificationFailed: (FirebaseAuthException e) {
          add(OnPhoneAuthErrorEvent(error: e.code));
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      emit(PhoneAuthError(error: e.toString()));
    }
  }

  FutureOr<void> _onVerifyOtp(
      VerifySentOtpEvent event, Emitter<PhoneauthblocState> emit) async {
    try {
      emit(PhoneAuthLoading());

      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: event.verificationId,
        smsCode: event.otpCode,
      );
      add(OnPhoneAuthVerificationCompleteEvent(credential: credential));
    } catch (e) {
      emit(PhoneAuthError(error: e.toString()));
    }
  }

  FutureOr<void> _loginWithCredential(
      OnPhoneAuthVerificationCompleteEvent event,
      Emitter<PhoneauthblocState> emit) async {
    try {
      await auth.signInWithCredential(event.credential).then((user) {
        if (user.user != null) {
          emit(PhoneAuthVerified());
        }
      });
    } on FirebaseAuthException catch (e) {
      emit(PhoneAuthError(error: e.code));
    } catch (e) {
      emit(PhoneAuthError(error: e.toString()));
    }
  }
}
