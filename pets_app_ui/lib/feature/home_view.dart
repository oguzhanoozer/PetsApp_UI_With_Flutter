import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Text('Hello World', style: context.textTheme.labelSmall),
      ),
    );
  }
}
