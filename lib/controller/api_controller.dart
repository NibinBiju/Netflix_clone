import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix_clone/model/api_model/api_model.dart';
import 'package:netflix_clone/utils/api_constants.dart';

MovieModel? model;

class ApiController {
  Future<void> fetchPopualrData() async {
    var uri = Uri.parse(ApiConstants.mostPopular + ApiConstants.apiKey);
    var response = await http.get(uri);
    print(response.body);
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      model = MovieModel.fromJson(jsonData);
    }
  }
}
