import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zartek_interview_task/presentation/screens/food_screen.dart';
import 'package:provider/provider.dart';
import 'package:zartek_interview_task/presentation/screens/home_screen.dart';
import 'application/bloc/cart_bloc.dart';
import 'application/food_response/food_bloc.dart';
import 'application/gmail_bloc/gmailauth_bloc.dart';
import 'application/phone_bloc/phoneauthbloc_bloc.dart';
import 'domain/cart/modal/cart.dart';
import 'domain/di/injectable.dart';
import 'infrastructure/gmail/gmail_signin_repositery.dart';
import 'infrastructure/phone/phone_auth_repositry.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await ConfigureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<GmailAuthRepository>(
            create: (context) => GmailAuthRepository()),
        RepositoryProvider<PhoneAuthRepository>(
            create: (context) => PhoneAuthRepository()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<GmailauthBloc>(
            create: (context) => GmailauthBloc(
                RepositoryProvider.of<GmailAuthRepository>(context)),
          ),
          BlocProvider<PhoneauthblocBloc>(
            create: (context) => PhoneauthblocBloc(
                RepositoryProvider.of<PhoneAuthRepository>(context)),
          ),
          BlocProvider(create: (context) => getIt<FoodBloc>()),
          BlocProvider(create: (context) => getIt<CartBloc>()),
        ],
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => CartProvider())
          ],
          child: MaterialApp(
            title: 'Zartek Interview',
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              primarySwatch: Colors.blue,
            ),
            home: FoodScreen(),
          ),
        ),
      ),
    );
  }
}
