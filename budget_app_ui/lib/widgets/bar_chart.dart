import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  final List<double> expensses;
  const BarChart({super.key, required this.expensses});

  @override
  Widget build(BuildContext context) {
    double mostExpensive = 0;

    for (var price in expensses) {
        if (price > mostExpensive) {
          mostExpensive = price;
        }
      }
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const Text(
            "Weekly Spending",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_rounded),
                iconSize: 30.0,
              ),
              const Text(
                "June 17,2004 - June 23,2004",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_rounded),
                iconSize: 30.0,
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Bar(
                lable: 'Su',
                amountSpent: expensses[0],
                mostExpensive: mostExpensive,
              ),
              Bar(
                lable: 'Mo',
                amountSpent: expensses[1],
                mostExpensive: mostExpensive,
              ),
              Bar(
                lable: 'Tu',
                amountSpent: expensses[2],
                mostExpensive: mostExpensive,
              ),
              Bar(
                lable: 'We',
                amountSpent: expensses[3],
                mostExpensive: mostExpensive,
              ),
              Bar(
                lable: 'Th',
                amountSpent: expensses[4],
                mostExpensive: mostExpensive,
              ),Bar(
                lable: 'Fr',
                amountSpent: expensses[5],
                mostExpensive: mostExpensive,
              ),
              Bar(
                lable: 'Sa',
                amountSpent: expensses[1],
                mostExpensive: mostExpensive,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Bar extends StatelessWidget {
  final String lable;
  final double amountSpent;
  final double mostExpensive;

  final double _maxBarHeight = 150.0;

  const Bar(
      {super.key,
      required this.lable,
      required this.amountSpent,
      required this.mostExpensive});

  @override
  Widget build(BuildContext context) {
    final barHeight = amountSpent / mostExpensive * _maxBarHeight;
    return Column(
      children: [
        Text(
          "₹ ${amountSpent.toStringAsFixed(2)}",
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Container(
          height: barHeight,
          width: 18.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(
              6.0,
            ),
          ),
        ),
        Text(
          lable,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
