// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice20.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Dice20Store on _Dice20Base, Store {
  final _$totalAtom = Atom(name: '_Dice20Base.total');

  @override
  int get total {
    _$totalAtom.reportRead();
    return super.total;
  }

  @override
  set total(int value) {
    _$totalAtom.reportWrite(value, super.total, () {
      super.total = value;
    });
  }

  final _$_Dice20BaseActionController = ActionController(name: '_Dice20Base');

  @override
  void roll() {
    final _$actionInfo =
        _$_Dice20BaseActionController.startAction(name: '_Dice20Base.roll');
    try {
      return super.roll();
    } finally {
      _$_Dice20BaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
total: ${total}
    ''';
  }
}
