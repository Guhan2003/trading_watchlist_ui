import 'package:flutter/material.dart';
import 'package:trading/presentation/screen/tab_bar_page.dart';
import 'package:trading/utils/constant.dart';

class WatchListPage extends StatefulWidget {
  const WatchListPage({super.key});

  @override
  State<WatchListPage> createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {}); 
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Watchlist'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.push_pin),
            )
          ],
          bottom: TabBar(
            labelColor: secondaryColor,
            indicatorColor: secondaryColor,
            controller: _tabController,
            onTap: (value) {
              setState(() {});
            },
            tabs: const [
              Tab(text: "Watchlist 1"),
              Tab(text: "Watchlist 2"),
              Tab(text: "Watchlist 3"),
              Tab(text: "Nifty"),
              Tab(icon: Icon(Icons.dashboard)),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            TabBarPage(),
            Center(child: Icon(Icons.account_circle)),
            Center(child: Icon(Icons.access_alarm)),
            Center(child: Icon(Icons.adb)),
            Center(child: Icon(Icons.dashboard)),
          ],
        ),
      ),
    );
  }
}
