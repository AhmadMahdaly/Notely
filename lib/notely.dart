import 'package:flutter/material.dart';

class Notely extends StatelessWidget {
  const Notely({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(
          context,
        ).textTheme.apply(
              fontFamily: 'Nunito',
            ),
      ),
      home: Container(),
    );
  }
}
