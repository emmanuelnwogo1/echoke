

import 'package:echoke/constants/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: const Text('Verify Email'),
      ),
      body: Column(children: [
          const Text("we've sent you an email verification, please open it to verify your account"),
          const Text("If you haven't received the verification email yet, press the button below"),
          TextButton(onPressed: () async{
            final user = FirebaseAuth.instance.currentUser;
            await user?.sendEmailVerification();
      
          }, 
          child: const Text('send email verification')
      
      ),
       TextButton(onPressed: () async {
            await FirebaseAuth.instance.signOut();
            Navigator.of(context).pushNamedAndRemoveUntil(registerRoute,
             (route) => false,
            );
        },
        child: const Text('Restart'),
        )
        
      ],
      ),
    );
      
  }
}





