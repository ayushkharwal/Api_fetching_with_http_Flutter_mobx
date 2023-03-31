import 'package:http/http.dart' as http;
import 'package:learning_fetching_apis/models/posts_model.dart';

var baseUrl = 'https://dummyjson.com';

// getPost() function
getPost() async {
  Uri url = Uri.parse('$baseUrl/products');

  var res = await http.get(url);

  try {
    if (res.statusCode == 200) {
      var data = productModelFromJson(res.body);
      return data.products;
    } else {
      print('Error during connection!');
    }
  } catch (e) {
    print(e.toString());
  }
}
