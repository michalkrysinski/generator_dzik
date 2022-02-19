import 'package:flutter/material.dart';
import 'package:name_generator_dzik/app/home/home_page_content.dart';
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
        title: Builder(builder: (context) {
          if (currentIndex == 1) {
            return const Text('Więcej o aplikacji');
          }

          return const Text('DZIK generator imion');
        }),
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
            icon: Icon(Icons.home),
            label: 'Generowanie imion',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz), label: 'Więcej o aplikacji'),
        ],
      ),
    );
  }
}
