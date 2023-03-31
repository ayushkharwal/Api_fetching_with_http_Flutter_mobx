import 'package:learning_fetching_apis/models/posts_model.dart';
import 'package:learning_fetching_apis/services/api_services.dart';
import 'package:mobx/mobx.dart';

part 'home_screen_store.g.dart';

class HomeScreenStore = _HomeScreenStore with _$HomeScreenStore;

abstract class _HomeScreenStore with Store {
  @observable
  List<Product> productsList = [];

  @action
  Future<void> fetchProducts() async {
    final productsList = await getPost();
    this.productsList = productsList;
  }
}
