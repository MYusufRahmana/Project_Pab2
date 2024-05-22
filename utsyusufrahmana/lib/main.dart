import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:utsyusufrahmana/firebase_options.dart';
import 'package:utsyusufrahmana/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StudentInputScreen(), // Tampilkan langsung tampilan input
    );
  }
}

