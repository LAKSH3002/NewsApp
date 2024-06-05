import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsholics/models/show_category.dart';
import 'package:newsholics/services/showcategory_news.dart';

// Display of Screen
// ignore: must_be_immutable
class CategoryNews extends StatefulWidget {
  String name;
  CategoryNews({required this.name});

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ShowCategoryModel> categories = [];
  // ignore: unused_field
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    getNews();
  }

  getNews() async {
    ShowCategoryNews showCategoryNews = ShowCategoryNews();
    await showCategoryNews.getCategoryNews(widget.name);
    categories = showCategoryNews.categories;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 169, 97),
        centerTitle: true,
        title: Text
        (
          widget.name.toLowerCase(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromARGB(255, 232, 234, 236)),
        ),
      ),

      body: Container(
        child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return ShowCategory(
                Image: categories[index].urlToImage!,
                desc: categories[index].description!,
                title: categories[index].title!,
              );
            }),
      ),
    );
  }
}

// ignore: must_be_immutable
class ShowCategory extends StatelessWidget {
  String Image, desc, title;
  ShowCategory({required this.Image, required this.desc, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 240, 235, 235)
          ),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: Image,
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                title,
                maxLines: 2,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
              ),
              Text(
                desc,
                maxLines: 4,
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
