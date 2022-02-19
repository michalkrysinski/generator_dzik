import 'package:flutter/material.dart';
import 'package:name_generator_dzik/app/result/result_page.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawPage extends StatelessWidget {
  const DrawPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DZIK LOSOWANIE'),
        backgroundColor: const Color.fromARGB(255, 11, 139, 69),
      ),
      backgroundColor: const Color.fromARGB(255, 160, 245, 174),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RandomWords(),
                  ),
                );
              },
              child: Container(
                color: const Color.fromARGB(255, 130, 255, 92),
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.all(30),
                child: Text(
                  'Losuj',
                  style: GoogleFonts.mali(fontSize: 35),
                ),
              ),
            ),
            const SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}
