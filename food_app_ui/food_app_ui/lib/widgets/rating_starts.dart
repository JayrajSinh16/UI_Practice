import 'package:flutter/material.dart';

class RatingStar extends StatelessWidget {
  final int rating;
  const RatingStar({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    String stars = '';

    for (int i = 0; i < rating; i++) {
      stars += '⭐';
    }
    stars.trim();
    return Text(
      stars,
      style: const TextStyle(
        fontSize: 18.0,
        letterSpacing: 1.2,
      ),
    );
  }
}
