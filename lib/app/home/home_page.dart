import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:name_generator_dzik/app/draw/draw_page.dart';
import 'package:name_generator_dzik/app/home/information/information_page_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DZIK GENERATOR IMION'),
        backgroundColor: const Color.fromARGB(255, 17, 202, 248),
      ),
      backgroundColor: const Color.fromARGB(255, 191, 242, 255),
      body: Builder(builder: (context) {
        if (currentIndex == 1) {
          return const InformationPageContent();
        }

        return const HomePageContent();
      }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.gesture),
            label: 'Generowanie imion',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz), label: 'Więcej o aplikacji'),
        ],
      ),
    );
  }
}

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
          Text(
            'generuj imię',
            style: GoogleFonts.lato(fontSize: 35),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            child: const Text('generuj imię'),
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 17, 202, 248)),
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
    );
  }
}
