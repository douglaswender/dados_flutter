import 'dart:math';

import 'package:mobx/mobx.dart';
part 'dice20.store.g.dart';

class Dice20Store = _Dice20Base with _$Dice20Store;

abstract class _Dice20Base with Store {
  @observable
  int total = Random().nextInt(20) + 1;

  @action
  void roll() {
    total = Random().nextInt(20) + 1;
  }
}
