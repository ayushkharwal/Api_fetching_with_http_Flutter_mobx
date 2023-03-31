import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learning_fetching_apis/models/posts_model.dart';
import 'package:learning_fetching_apis/services/api_services.dart';
import 'package:learning_fetching_apis/services/home_screen_store.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final store = HomeScreenStore();

  @override
  void initState() {
    super.initState();
    store.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Learning Fetching Apis',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Observer(
        builder: (context) {
          return ListView.builder(
            itemCount: store.productsList.length,
            itemBuilder: (context, index) {
              final product = store.productsList[index];
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: ListTile(
                    leading: Image.network(product.thumbnail),
                    title: Text(product.title),
                    subtitle: Row(
                      children: [
                        Expanded(child: Text(product.description)),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            '\$ ${product.price.toString()}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
