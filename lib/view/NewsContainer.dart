import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;

  NewsContainer({
    super.key,
    required this.imgUrl,
    required this.newsDes,
    required this.newsHead,
    required this.newsUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.network(imgUrl),
          Text(
            newsHead,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(newsDes, style: TextStyle(fontSize: 17)),
          ElevatedButton(
            onPressed: () {
              print("GOING TO $newsUrl");
            },
            child: Text("Read More"),
          ),
        ],
      ),
    );
  }
}
