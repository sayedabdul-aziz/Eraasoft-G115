import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:insights_news_3_21/core/constants/constants.dart';
import 'package:insights_news_3_21/features/home/model/news_model/news_model.dart';

class ApiServices {
  static Future<NewsModel?> getNewsByCategory(String category) async {
    try {
      var url = Uri.parse(
          '$baseUrl$headlinesEndpoint?category=$category&country=us&apiKey=$apiKey');
      var res = await http.get(url);
      if (res.statusCode == 200) {
        return NewsModel.fromJson(json.decode(res.body));
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  static Future<NewsModel?> getNewsBySource(String source) async {
    try {
      var url =
          Uri.parse('$baseUrl$headlinesEndpoint?source=$source&apiKey=$apiKey');
      var res = await http.get(url);
      if (res.statusCode == 200) {
        return NewsModel.fromJson(json.decode(res.body));
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
