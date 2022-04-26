import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zartek_interview_task/presentation/screens/home_screen.dart';

import '../../application/gmail_bloc/gmailauth_bloc.dart';

class DrawerWidget extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener<GmailauthBloc, GmailauthState>(
        listener: (context, state) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => HomeScreen()),
            (route) => false,
          );
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          child: Drawer(
            child: Column(children: [
              Container(
                height: 220,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF66BB6A),
                      Colors.green,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18)),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        maxRadius: 30,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/51953/mother-daughter-love-sunset-51953.jpeg?cs=srgb&dl=pexels-pixabay-51953.jpg&fm=jpg'),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '${user.displayName}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: () async {
                    context.read<GmailauthBloc>().add(SignOutRequested());
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.logout,
                        size: 30,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 20),
                      Text('Log out',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
