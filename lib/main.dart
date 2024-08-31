import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Screen/home_Screen/home_screen.dart';
import 'package:food_app/auth/sign_in.dart';
import 'package:food_app/providers/product_provider.dart';
import 'package:provider/provider.dart';


void main() async {
   WidgetsFlutterBinding.ensureInitialized();
 Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return ChangeNotifierProvider(
      create: (context) => ProductProvider(),
    child: MaterialApp(
      home: SignIn(),
    ),
     );

  }
}
