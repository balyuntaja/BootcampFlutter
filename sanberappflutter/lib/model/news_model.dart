import 'package:sanberappflutter/app/config/app_assets.dart';

class NewsModel {
  final String url;
  final String title;
  final String subtitle;

  NewsModel({required this.url, required this.title, required this.subtitle});
}

List<NewsModel> news = [
  NewsModel(
      url: AppAssets.image3,
      title: 'TECHNOLOGY',
      subtitle: 'Insurtech startup PasarPolis gets \$54 million — Series B'),
  NewsModel(
      url: AppAssets.image4,
      title: 'TECHNOLOGY',
      subtitle: 'The IPO parade continues as Wish files, Bumble '),
  NewsModel(
      url: AppAssets.image5,
      title: 'TECHNOLOGY',
      subtitle: 'Hypatos gets \$11.8M for a deep learning approach'),
];
