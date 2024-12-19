import 'package:flutter/material.dart';
import 'package:pokedex/router.dart';

class David extends StatelessWidget {
  const David({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}