import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:name_generator_dzik/app/draw/draw_page.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('images/dzik.jpg'),
            radius: 160,
          ),
          const SizedBox(height: 90),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DrawPage(),
                ),
              );
            },
            child: Container(
              color: const Color.fromARGB(255, 178, 215, 255),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(30),
              child: Text(
                'generuj imię',
                style: GoogleFonts.mali(fontSize: 35),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
