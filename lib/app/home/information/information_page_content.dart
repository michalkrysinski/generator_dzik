import 'package:flutter/material.dart';

class InformationPageContent extends StatelessWidget {
  const InformationPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          TextField(),
          Text('Pięć'),
          Text('Pięć'),
          Text('Pięć'),
          Text('Pięć'),
          Text('Pięć'),
          Text('Pięć'),
          Text('Pięć'),
          Text('Pięć'),
        ],
      ),
    );
  }
}
