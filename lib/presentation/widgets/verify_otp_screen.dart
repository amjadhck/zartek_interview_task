import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/phone_bloc/phoneauthbloc_bloc.dart';

class VerifyOtpScreen extends StatelessWidget {
  VerifyOtpScreen(
      {Key? key, required this.otpController, required this.verificationId})
      : super(key: key);
  final TextEditingController otpController;
  final String verificationId;
  final GlobalKey<FormState> _otpFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _otpFormKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.number,
            controller: otpController,
            decoration: const InputDecoration(
              hintText: 'Enter OTP',
            ),
            validator: (value) {
              if (value!.length != 6) {
                return 'Please enter valid OTP';
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: OutlinedButton(
              onPressed: () {
                if (_otpFormKey.currentState!.validate()) {
                  _verifyOtp(context: context);
                }
              },
              child: const Text('Verify OTP'),
            ),
          ),
        ],
      ),
    );
  }

  void _verifyOtp({required BuildContext context}) {
    context.read<PhoneauthblocBloc>().add(VerifySentOtpEvent(
        otpCode: otpController.text, verificationId: verificationId));
    otpController.clear();
  }
}
