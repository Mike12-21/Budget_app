import 'package:budget_app/data/data.dart';
import 'package:budget_app/widgets/bar_chart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            forceElevated: true,
            floating: true,
            expandedHeight: 100.0,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Budgets'),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                iconSize: 30.0,
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10.0),
                  height: 100.0,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: BarChart(weeklySpending),
                );
              },
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }
}
