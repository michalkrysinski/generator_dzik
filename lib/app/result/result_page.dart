import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        backgroundColor: const Color.fromARGB(255, 243, 12, 81),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 119, 119),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 250),
            Text(
              wordPair.asPascalCase,
              style: GoogleFonts.mali(fontSize: 45),
            ),
          ],
        ),
      ),
    );
  }
}
