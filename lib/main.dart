import 'package:flutter/material.dart';
import 'package:woojr_news/repository/news_repo.dart';

void main() {
  NewsRepo news = NewsRepo();
  runApp(news.getAllNews());
}

