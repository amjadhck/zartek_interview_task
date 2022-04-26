import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zartek_interview_task/application/gmail_bloc/gmailauth_bloc.dart';
import 'package:zartek_interview_task/core/constants/constants.dart';
import 'package:zartek_interview_task/presentation/screens/food_screen.dart';
import 'package:zartek_interview_task/presentation/screens/phone_screen.dart';
import 'package:zartek_interview_task/presentation/widgets/login_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<GmailauthBloc, GmailauthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => FoodScreen()));
          }
          if (state is AuthError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        child: BlocBuilder<GmailauthBloc, GmailauthState>(
          builder: (context, state) {
            if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is UnAuthenticated) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 180,
                      width: 100,
                      child: Image.asset(
                        kFirebaseLogo,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    LoginButton(kGoogleLogo, Colors.blue, 'Google', () async {
                      _authenticateWithGoogle(context);
                    }),
                    const SizedBox(
                      height: 30,
                    ),
                    LoginButton(
                      kPhoneLogo,
                      Colors.lightGreen[400]!,
                      'Phone',
                      () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return PhoneAuthScreen();
                            },
                          ),
                        );
                      },
                    )
                  ],
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}

void _authenticateWithGoogle(context) {
  BlocProvider.of<GmailauthBloc>(context).add(
    GoogleSignInRequested(),
  );
}
