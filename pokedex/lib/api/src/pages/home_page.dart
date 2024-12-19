import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/api/src/providers/favourite_poke.providers.dart';
import 'package:pokedex/api/src/providers/poke.provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  
  Widget build(BuildContext context) {
    final poke = ref.watch(pokeProvider);
    final pokeAmount = ref.watch(favouritePokeProvider.select((value) => value.length),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text ("poke"),
        actions: [
          Badge.count(
            count: pokeAmount,
            child: IconButton(onPressed: () {
              context.pushNamed('Liked-poke');
            },
          icon: const Icon(Icons.favorite),
          ),
          ),
        ]
      ),
      body: switch(poke){
        AsyncData(:final value) => Center(
          child: Column(children: [
            Text(value.title),
            Row(children: [
              IconButton(onPressed: (){
                ref.invalidate(pokeProvider);
              },
              icon: const Icon(Icons.account_balance_rounded),
              ),
              if(poke.isLoading)
              const Center(child: CircularProgressIndicator(),
              ),
              Image.network(
                value.url,
              ),
              IconButton(onPressed: (){
                ref.read(favouritePokeProvider).add(value);
                ref.invalidate(pokeProvider);
              }, 
              icon: const Icon(Icons.account_balance_outlined),)
            ],)
          ],),
        ),
        AsyncError(:final error) => Builder(builder: (context){
          print(error);
          return Text("errore");
        },
        ),
        _ => const CircularProgressIndicator(),

      },
    );
  }
}