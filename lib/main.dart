import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('images/dzik.webp'),
                radius: 140,
              ),
              Text(
                'DZIK',
                style: GoogleFonts.lato(fontSize: 35),
              ),
              Text(
                'GENERATOR IMION',
                style: GoogleFonts.lato(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
