import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:latihanuts2/firebase_options.dart';
import 'package:latihanuts2/screens/main_screens.dart'; // Impor tampilan input

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  // Navigasi langsung ke tampilan input
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingInputScreen(), // Tampilkan langsung tampilan input
    );
  }
}
