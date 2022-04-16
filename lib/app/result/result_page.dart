import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:name_generator_dzik/app/draw/draw_page.dart';
import 'package:name_generator_dzik/app/home/home_page.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({
    Key? key,
  }) : super(key: key);

  @override
  State<RandomWords> createState() => _ResultWordsState();
}

class _ResultWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return Scaffold(
      appBar: AppBar(
        title: const Text('TWÓJ WYNIK'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 100, 50, 215),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 250),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RandomWords(),
                  ),
                );
              },
              child: Text(
                wordPair.asPascalCase,
                style: GoogleFonts.mali(fontSize: 55),
              ),
            ),
            const SizedBox(
              height: 220,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DrawPage(),
                  ),
                );
              },
              child: const Text('Wróć do losowanie'),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 218, 206, 223),
                onPrimary: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: const Text(
                'Wróć do strony głównej',
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 218, 206, 223),
                onPrimary: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
