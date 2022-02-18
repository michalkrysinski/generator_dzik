import 'package:flutter/material.dart';
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
      ),
      backgroundColor: const Color.fromARGB(255, 201, 252, 160),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/losowanie.jpg'),
              radius: 160,
            ),
            const SizedBox(height: 90),
            Text(
              'losuj imię',
              style: GoogleFonts.lato(fontSize: 35),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Lsosuj imię'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text('Wróć'),
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
