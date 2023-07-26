import 'package:flutter/material.dart';
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
      ),
      body: Center(
        child: FutureBuilder<List<Product>>(
          future: futureProducts,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTileWidget(
                    snapshot.data![index].title,
                    snapshot.data![index].image,
                    snapshot.data![index].price,
                    snapshot.data![index].category,
                    snapshot.data![index].rating.rate,
                  );
                },
                itemCount: snapshot.data!.length,
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
