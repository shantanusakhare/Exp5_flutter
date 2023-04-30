import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out
  void signUserOUt() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: signUserOUt, 
            icon: Icon(Icons.logout, color:Colors.black,),
            )
          ],
        ),
      body: Center(
          child: Text(
        "LOGGED IN as: " + user.email!,
        style:TextStyle(fontSize: 20),
        )),
    );
  }
}

