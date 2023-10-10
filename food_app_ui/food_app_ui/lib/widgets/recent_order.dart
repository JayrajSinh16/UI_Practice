import 'package:flutter/material.dart';

class RecentOrders extends StatefulWidget {
  const RecentOrders({super.key});

  @override
  State<RecentOrders> createState() => _RecentOrdersState();
}

class _RecentOrdersState extends State<RecentOrders> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal:20.0),
          child: Text(
            "Recent Orders",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
            ),
          ),
        ),
        Container(
          height: 120,
          color: Colors.blue,
          child: ListView(
            
          ),
        )
      ],
    );
  }
}
