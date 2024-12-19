import 'package:go_router/go_router.dart';
import 'package:pokedex/api/src/pages/home_page.dart';
import 'package:pokedex/api/src/pages/liked_poke.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/',
    name: 'Home-page',
    builder: (context, state) => const HomePage(),
    ),
     GoRoute(path: '/liked',
    name: 'Liked-pokeF',
    builder: (context, state) => const LikedPoke(),
     ),
  ]
);