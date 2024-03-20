import 'package:flutter/material.dart';
import 'package:kuis_application/models/news.dart';
import 'package:kuis_application/services/api_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ApiService _apiService = ApiService();
  List<News> _allNews = [];

  @override
  void initState() {
    super.initState();
    _loadNews();
  }

  Future<void> _loadNews() async {
    final List<Map<String, dynamic>> allNewsData = await _apiService.getAllNews();

    setState(() {
      _allNews = allNewsData.map((e) => News.fromJson(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Berita Yusuf'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildNewsList('Berita Terbaru', _allNews),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsList(String title, List<News> Berita) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: Berita.map((news) => _buildNewsItem(news)).toList(),
        ),
      ],
    );
  }

 Widget _buildNewsItem(News news) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          news.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          news.author,
          style: const TextStyle(fontWeight: FontWeight.normal),
        ),
        Text(
          news.publishedAt,
          style: const TextStyle(fontWeight: FontWeight.w100),
        ),
        const SizedBox(height: 10),
        Divider(color: Colors.blue),
      ],
    ),
  );
}

}
