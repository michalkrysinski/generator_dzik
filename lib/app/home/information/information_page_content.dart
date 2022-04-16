import 'package:flutter/material.dart';

class InformationPageContent extends StatelessWidget {
  const InformationPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Container(
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
              child: const Expanded(
                child: Text(
                    'Aplikacja służy do generowania nazw. Działanie jest proste. Żeby wygenerować słowo, należy nacisnąć obrazek, a następnie wybrać "Losuj", aby otrzymać jedno słowo z całej puli.  Następnie przenosi nas do następnego ekranu, który pokazuje wynik losowania.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
