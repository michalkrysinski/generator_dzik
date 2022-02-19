import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TWÓJ WYNIK'),
        backgroundColor: const Color.fromARGB(255, 243, 12, 81),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 119, 119),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 90),
            Text(
              'Wynik losowania to:',
              style: GoogleFonts.mali(fontSize: 35),
            ),
            const SizedBox(height: 250),
          ],
        ),
      ),
    );
  }
}
