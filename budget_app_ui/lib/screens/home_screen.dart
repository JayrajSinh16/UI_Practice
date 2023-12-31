import 'package:budget_app_ui/data/data.dart';
import 'package:budget_app_ui/helpers/color_helper.dart';
import 'package:budget_app_ui/models/category_model.dart';
import 'package:budget_app_ui/models/expense_model.dart';
import 'package:budget_app_ui/screens/category_screen.dart';
import 'package:budget_app_ui/widgets/bar_chart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildCategory(Category category, double totalAmountSpent) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => CategoryScreen(category: category),),),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        height: 100.0,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  category.name,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "₹ ${(category.maxAmount - totalAmountSpent).toStringAsFixed(2)} / ${category.maxAmount.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                print(constraints.maxHeight);
                print(constraints.maxWidth);
    
                final double maxBarWidth = constraints.maxWidth;
                final double precent =
                    (category.maxAmount - totalAmountSpent) / category.maxAmount;
                double barWidth = precent * maxBarWidth;
    
                if (barWidth < 0) {
                  barWidth = 0;
                }
                return Stack(
                  children: [
                    Container(
                      height: 18.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15.00),
                      ),
                    ),
                    Container(
                      height: 18.0,
                      width: barWidth,
                      decoration: BoxDecoration(
                        color: getColor(
                          context,
                          precent,
                        ),
                        borderRadius: BorderRadius.circular(
                          15.00,
                        ),
                      ),
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text(
              "Expense Tracker",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            forceElevated: true,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              iconSize: 30.0,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
                iconSize: 30.0,
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == 0) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: BarChart(expensses: weeklySpending),
                  );
                } else {
                  final Category category = categories[index - 1];
                  double totalAmountSpent = 0;
                  category.expenses.forEach((Expense expense) {
                    totalAmountSpent += expense.cost;
                  });
                  return _buildCategory(category, totalAmountSpent);
                }
              },
              childCount: 1 + categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
