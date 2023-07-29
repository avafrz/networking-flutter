import 'package:flutter/material.dart';
import 'package:flutternetworking/model/favourite.dart';
import 'package:flutternetworking/screens/favourites_screen.dart';
import 'package:provider/provider.dart';
import '../widgets/listtile_widget.dart';
import '../model/product.dart';
import '../service/api_handler.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Product>> futureProducts;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    futureProducts = fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Products'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(FavoritesScreen.routeName);
            },
            child: const Text(
              'Favotites',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: FutureBuilder<List<Product>>(
          future: futureProducts,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Consumer<Favorites>(
                builder: (context, favorites, child) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTileWidget(
                          snapshot.data![index].title,
                          snapshot.data![index].image,
                          snapshot.data![index].price,
                          snapshot.data![index].category,
                          snapshot.data![index].rating.rate,
                          favorites);
                    },
                    itemCount: snapshot.data!.length,
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
