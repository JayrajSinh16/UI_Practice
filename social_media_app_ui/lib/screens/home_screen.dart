import 'package:flutter/material.dart';
import 'package:social_media_app_ui/data/data.dart';
import 'package:social_media_app_ui/model/user_model.dart';
import 'package:social_media_app_ui/widgets/following_users.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "SnapUp",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: const TextStyle(fontSize: 18.0),
          tabs: const <Widget>[
            Tab(
              text: 'Treading',
            ),
            Tab(
              text: 'Latest',
            ),
          ],
        ),
      ),
      body: ListView(
        children:const [
           FollowingUsers(),
        ],
      ),
    );
  }
}
