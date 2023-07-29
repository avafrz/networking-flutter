import 'package:flutter/material.dart';
import 'package:flutternetworking/model/favourite.dart';
import 'package:provider/provider.dart';

class FavoritesScreen extends StatefulWidget {
  static const routeName = '/favorites_screen';
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Favorites'),
      ),
      body: Consumer<Favorites>(
        builder: (context, favorites, child) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Center(
                child: Text(favorites.favouritesList[index]),
              );
            },
            itemCount: favorites.favouritesList.length,
          );
        },
      ),
    );
  }
}
