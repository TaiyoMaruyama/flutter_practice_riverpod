import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plactice_riverpod/Data/countData.dart';

final titleProvider = Provider((ref) => 'riverpod demo page');

final removeProvider = StateProvider<int>((ref) => 0);

final countDataProvider = StateProvider<CountData>(
    (ref) => CountData(count: 0, countUp: 0, countDown: 0));
