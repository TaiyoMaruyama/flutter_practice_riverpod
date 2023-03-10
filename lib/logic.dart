import 'package:plactice_riverpod/Data/countData.dart';

class Logic {
  CountData _countData = CountData(count: 0, countUp: 0, countDown: 0);

  void increase() {
    _countData = _countData.copyWith(
      count: _countData.count + 1,
      countUp: _countData.countUp + 1,
    );
  }

  void decrease() {
    _countData = _countData.copyWith(
      count: _countData.count + 1,
      countDown: _countData.countDown + 1,
    );
  }

  void reset() {
    _countData = CountData(count: 0, countUp: 0, countDown: 0);
  }
}