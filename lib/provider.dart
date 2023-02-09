import 'package:flutter_riverpod/flutter_riverpod.dart';

final titleProvider = Provider((ref) => 'riverpod demo page');

final mainText = Provider((ref) => 'Center and Main Text.');

final countProvider = StateProvider<int>((ref) => 0);