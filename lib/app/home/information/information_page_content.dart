import 'package:flutter/material.dart';

class InformationPageContent extends StatelessWidget {
  const InformationPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Container(
            color: const Color.fromARGB(255, 178, 215, 255),
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            child: const Text('Tutaj rozpiszę się na temat aplikacji.'),
          )
        ],
      ),
    );
  }
}
