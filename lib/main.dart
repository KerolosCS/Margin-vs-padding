import 'package:flutter/material.dart';
import 'package:margin_vs_padding/screens/home_scren.dart';

void main(List<String> args) {
  runApp(const MarginVsPadding());
}

class MarginVsPadding extends StatelessWidget {
  const MarginVsPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
