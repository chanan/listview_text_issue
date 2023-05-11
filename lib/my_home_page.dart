import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Text Issue'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: 'ABC',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: 'Alarm',
            ),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Text('Click on the tabs and see if the text goes crazy'),
              TabBar(
                tabs: [
                  Tab(
                    text: 'Tab 1',
                  ),
                  Tab(
                    text: 'Tab 2',
                  ),
                  Tab(
                    text: 'Tab 3',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Text('Tab 1'),
                    Text('Tab 2'),
                    Text('Tab 3'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
