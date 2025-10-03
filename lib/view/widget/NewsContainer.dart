import 'package:flutter/material.dart';

class Newscontainer extends StatelessWidget {
  final String imgUrl;
  final String newsHead;
  final String newsDes;
  final String newsUrl;

  const Newscontainer({
    super.key,
    required this.imgUrl,
    required this.newsHead,
    required this.newsDes,
    required this.newsUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ Correct Image.network usage
          Image.network(
            imgUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const SizedBox(
                height: 200,
                child: Center(child: Icon(Icons.broken_image, size: 48)),
              );
            },
          ),

          const SizedBox(height: 8),
          Text(
            newsHead,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(newsDes),
          const SizedBox(height: 8),

          ElevatedButton(
            onPressed: () {
              // TODO: Open newsUrl with url_launcher
            },
            child: const Text("Read More"),
          ),
        ],
      ),
    );
  }
}
