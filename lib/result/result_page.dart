import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:name_generator_dzik/app/draw/draw_page.dart';

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
            const CircleAvatar(
              backgroundImage: AssetImage('images/wynik.jpg'),
              radius: 160,
            ),
            const SizedBox(height: 90),
            Text(
              'Wynik losowania to:',
              style: GoogleFonts.lato(fontSize: 35),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('imię'),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 243, 12, 81),
              ),
              onPressed: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(
                    builder: (_) => const DrawPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
