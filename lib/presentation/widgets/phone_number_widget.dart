import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/phone_bloc/phoneauthbloc_bloc.dart';

class PhoneNumber extends StatelessWidget {
  PhoneNumber({Key? key, required this.phoneNumberController})
      : super(key: key);
  final TextEditingController phoneNumberController;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _phoneNumberFormKey = GlobalKey();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: 'Phone'),
          controller: phoneNumberController,
          keyboardType: TextInputType.phone,
        ),
        const SizedBox(
          height: 10,
        ),
        OutlinedButton(
            onPressed: () {
              if (_phoneNumberFormKey.currentState!.validate()) {
                _sendOtp(
                    phoneNumber: phoneNumberController.text, context: context);
              }
            },
            child: const Text('Get Otp')),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  void _sendOtp({required String phoneNumber, required BuildContext context}) {
    final phoneNumberWithCode = phoneNumber;
    context.read<PhoneauthblocBloc>().add(
          SendOtpToPhoneEvent(
            phoneNumber: phoneNumberWithCode,
          ),
        );
  }
}
