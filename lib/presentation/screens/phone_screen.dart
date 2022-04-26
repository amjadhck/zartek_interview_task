import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zartek_interview_task/presentation/screens/food_screen.dart';

import '../../application/phone_bloc/phoneauthbloc_bloc.dart';
import '../widgets/phone_number_widget.dart';
import '../widgets/verify_otp_screen.dart';

class PhoneAuthScreen extends StatelessWidget {
  PhoneAuthScreen({Key? key}) : super(key: key);

  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login via Phone'),
      ),
      body: BlocListener<PhoneauthblocBloc, PhoneauthblocState>(
        listener: (context, state) {
          if (state is PhoneAuthVerified) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => FoodScreen(),
              ),
            );
          }
          if (state is PhoneAuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
              ),
            );
          }
        },
        child: BlocBuilder<PhoneauthblocBloc, PhoneauthblocState>(
          builder: (context, state) {
            if (state is PhoneAuthLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    if (state is! PhoneAuthCodeSentSuccess)
                      PhoneNumber(
                        phoneNumberController: phoneNumberController,
                      )
                    else
                      VerifyOtpScreen(
                        otpController: otpController,
                        verificationId: state.verificationId,
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
