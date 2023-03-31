// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenStore on _HomeScreenStore, Store {
  late final _$productsListAtom =
      Atom(name: '_HomeScreenStore.productsList', context: context);

  @override
  List<Product> get productsList {
    _$productsListAtom.reportRead();
    return super.productsList;
  }

  @override
  set productsList(List<Product> value) {
    _$productsListAtom.reportWrite(value, super.productsList, () {
      super.productsList = value;
    });
  }

  late final _$fetchProductsAsyncAction =
      AsyncAction('_HomeScreenStore.fetchProducts', context: context);

  @override
  Future<void> fetchProducts() {
    return _$fetchProductsAsyncAction.run(() => super.fetchProducts());
  }

  @override
  String toString() {
    return '''
productsList: ${productsList}
    ''';
  }
}
