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
        title: const Text('LOSOWANIE'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 100, 50, 215),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
                padding: const EdgeInsets.all(
                  20,
                ),
                margin: const EdgeInsets.all(
                  12,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                    color: const Color.fromARGB(255, 170, 167, 179),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(25.0),
                ),
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
