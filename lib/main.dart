import 'package:e_mart/app/feature/homepage/presentation/view/qr_code.dart';
import 'package:e_mart/app/feature/homepage/presentation/widgets/home_screen_widget/top_header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QrCode(),
    );
  }
}
