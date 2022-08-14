import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(user!.phoneNumber!),
            // Text(user!.displayName!),
            CircleAvatar(
              child: Icon(Icons.thumb_up),
              // backgroundImage: NetworkImage(user!.photoURL!),
              radius: 20,
            )
          ],
        ),
      ),
    );
  }
}
