import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

class FetchNews {
  static final List<String> sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
  ];

  // NOTE: don't hardcode API keys in production.
  static const String _apiKey = 'eef7d3cb63d74b44907ec67ed3ee39a1';

  // Returns a single article as Map<String, dynamic> or null on failure
  static Future<Map<String, dynamic>?> fetchNews() async {
    final random = Random();
    final sourceID = sourcesId[random.nextInt(sourcesId.length)];
    print('Selected source: $sourceID');

    final uri = Uri.parse(
      'https://newsapi.org/v2/top-headlines?sources=$sourceID&apiKey=eef7d3cb63d74b44907ec67ed3ee39a1',
    );

    try {
      final http.Response response = await http.get(uri);

      if (response.statusCode != 200) {
        print('News API returned ${response.statusCode}: ${response.reasonPhrase}');
        print('Response body: ${response.body}');
        return null;
      }

      final Map<String, dynamic> bodyData = jsonDecode(response.body);
      final dynamic articlesDynamic = bodyData['articles'];

      if (articlesDynamic == null || articlesDynamic is! List || articlesDynamic.isEmpty) {
        print('No articles found for source: $sourceID. Full body: ${bodyData}');
        return null;
      }

      final List articles = articlesDynamic;
      final article = articles[random.nextInt(articles.length)];

      if (article is Map<String, dynamic>) {
        print('Picked article: ${article['title']}');
        return article;
      } else {
        print('Article item is not a Map: $article');
        return null;
      }
    } catch (e, st) {
      print('Exception in fetchNews: $e\n$st');
      return null;
    }
  }
}
