import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plactice_riverpod/logic.dart';
import 'package:plactice_riverpod/provider.dart';

class ViewModel {
  final Logic _logic = Logic();
  late WidgetRef _ref;

  void setRef(WidgetRef ref) {
    this._ref = ref;
  }

  get count => _ref.watch(countDataProvider.notifier).state.countUp.toString();

  get countUp =>
      _ref.watch(countDataProvider.notifier).state.countUp.toString();

  get countDown =>
      _ref.watch(countDataProvider.notifier).state.countDown.toString();

  void onIncrease (){
    _logic.increase();
    _ref.watch(countDataProvider.notifier).state = _logic.countData;
  }
}
