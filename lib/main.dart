import 'package:echoke/firebase_options.dart';
import 'package:echoke/views/login_view.dart';
import 'package:echoke/views/register_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
       
      ),
      home: const HomePage(),
  ),);
}



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: const Text("Echoke"),
        ),
        body: FutureBuilder(
          future: Firebase.initializeApp(
                    options: DefaultFirebaseOptions.currentPlatform,
                    ),
          builder: (context,  snapshot) {
            switch (snapshot.connectionState){
              
               case ConnectionState.done:
                  final user = FirebaseAuth.instance.currentUser;
              
                  if (user?.emailVerified ?? false){
                    print('you are email verified');
                  }else{
                    print('you need to verify your email first');
                  }
                  return const Text('Done');
           default: 
             return const Text("loading...");
              
            }



            
          },
         
        ),
    );
  }

}




