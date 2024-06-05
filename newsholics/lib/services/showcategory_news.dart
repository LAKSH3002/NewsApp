import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsholics/models/show_category.dart';

// Calling the API here
class ShowCategoryNews 
{
  List<ShowCategoryModel> categories = [];

  Future<void> getCategoryNews(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=cecdd8569af1429c8e1861a012f575eb";
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          ShowCategoryModel CategoryModel = ShowCategoryModel(
              title: element["title"],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element['content'],
              author: element['author']);
          categories.add(CategoryModel);
        }
      });
    }
  }
}
// cecdd8569af1429c8e1861a012f575eb