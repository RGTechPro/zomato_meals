import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
=======
import 'checkout_page.dart';
>>>>>>> Stashed changes
import 'home_page.dart';

void main() async{  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CheckoutPage(),
    );
  }
}

