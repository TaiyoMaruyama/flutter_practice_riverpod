import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plactice_riverpod/Data/countData.dart';
import 'package:plactice_riverpod/provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ref.watch(titleProvider),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref
                  .watch(countDataProvider.notifier)
                  .state
                  .count
                  .toString(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      CountData countData = ref.read(countDataProvider.notifier).state;
                      ref.read(countDataProvider.notifier).state = countData.copyWith(
                        count: countData.count + 1,
                        countUp: countData.countUp + 1,
                      );
                    });
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      CountData countData = ref.read(countDataProvider.notifier).state;
                      ref.read(countDataProvider.notifier).state = countData.copyWith(
                        count: countData.count - 1,
                        countDown: countData.countDown + 1,
                      );
                    });
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  ref
                      .watch(countDataProvider.notifier)
                      .state
                      .countUp
                      .toString(),
                ),
                Text(
                  ref
                      .watch(countDataProvider.notifier)
                      .state
                      .countDown
                      .toString(),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ref.read(countDataProvider.notifier).state = const CountData(
              count: 0,
              countUp: 0,
              countDown: 0,
            );
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
