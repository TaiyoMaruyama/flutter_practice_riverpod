import 'package:flutter_riverpod/flutter_riverpod.dart';

final titleProvider = Provider((ref) => 'riverpod demo page');

final countProvider = StateProvider<int>((ref) => 0);

final addProvider = StateProvider<int>((ref) => 0);

final removeProvider = StateProvider<int>((ref) => 0);