import 'package:flutter/material.dart';
import 'package:thirty_days_thirty_widgets/widgets/20_cloning_insta_ui.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:thirty_days_thirty_widgets/widgets/24_email_pass_auth.dart';
import 'package:thirty_days_thirty_widgets/widgets/26_splash_screen.dart';
import 'package:thirty_days_thirty_widgets/widgets/27_shimmer_effect.dart';
import 'firebase_options.dart';
void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.cyan,
      ),
      home: splashScreen(),
    );
  }
}