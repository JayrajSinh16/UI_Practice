import 'package:flutter/material.dart';
import 'package:food_app_ui/data/data.dart';
import 'package:food_app_ui/widgets/recent_order.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Delivery"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.account_circle),
          iconSize: 30,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text(
              "Cart ($currentUser.cart.length)",
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(width: 0.8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        width: 0.8, color: Theme.of(context).primaryColor),
                  ),
                  hintText: "Search Food Or Resturants",
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.clear))),
            ),
          ),
          const RecentOrders(), 
        ],
      ),
    );
  }
}
