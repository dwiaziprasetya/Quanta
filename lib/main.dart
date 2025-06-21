import 'package:flutter/material.dart';
import 'package:quanta/presentation/screens/home/home_screen.dart';
import 'package:quanta/presentation/screens/transaction/transaction_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TransactionScreen());
  }
}
