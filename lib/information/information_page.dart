import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:name_generator_dzik/app/home/home_page.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informacje o aplikacji'),
        backgroundColor: const Color.fromARGB(255, 243, 12, 81),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 119, 119),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'tutaj coś będzie',
              style: GoogleFonts.lato(fontSize: 35),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('i tutaj też'),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 243, 12, 81),
              ),
              onPressed: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(
                    builder: (_) => const HomePage(),
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
