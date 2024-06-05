import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArticleView extends StatefulWidget {
  String BlogUrl;
  ArticleView({required this.BlogUrl});

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 169, 97),
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Holics          ',
              style: TextStyle(
                  color: Color.fromARGB(255, 232, 234, 236),
                  fontWeight: FontWeight.bold),
            ),
            // Body part is remaining with web view thing.
          ],
        ),
      ),
    );
  }
}
