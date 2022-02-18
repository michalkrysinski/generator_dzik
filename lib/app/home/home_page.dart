import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:name_generator_dzik/app/draw/draw_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DZIK GENERATOR IMION'),
      ),
      backgroundColor: const Color.fromARGB(255, 191, 242, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/dzik.jpg'),
              radius: 160,
            ),
            const SizedBox(height: 90),
            Text(
              'generuj imię',
              style: GoogleFonts.lato(fontSize: 35),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('generuj imię'),
              onPressed: () {
                Navigator.of(context).push(
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
