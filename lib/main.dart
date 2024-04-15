import 'package:flutter/material.dart';

import 'MyScreens/Creativity.dart';

void main() {
  runApp(Creativity());
}

class CardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: () {},
            child: const SizedBox(
              width: 300,
              height: 100,
              child: Center(child: Text('Elevated Card (tappable)')),
            ),
          ),
        ),
        Card(
          elevation: 0,
          color: Theme.of(context).colorScheme.surfaceVariant,
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(child: Text('Filled Card')),
          ),
        ),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(child: Text('Outlined Card')),
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: MediaQuery(
        data: const MediaQueryData(
          padding: EdgeInsets.only(
            top: 48,
            bottom: 24,
          ),
        ),
        child: Scaffold(
          body: CardExample(),
        ),
      ),
    );
  }
}