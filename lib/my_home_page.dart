import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 3);
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const Text('Click on the tabs and see if the text goes crazy'),
            TabBar(
              controller: tabController,
              tabs: const [
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
                controller: tabController,
                children: const [
                  Text('Tab 1'),
                  Text('Tab 2'),
                  Text('Tab 3'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
