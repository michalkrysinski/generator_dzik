import 'package:flutter/material.dart';
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
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DrawPage(),
                ),
              );
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage('images/losowanie.jpg'),
              radius: 180,
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }
}
