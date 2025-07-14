import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widget/detail_widget.dart';

@RoutePage()
class DetailScreen extends StatelessWidget {
  final String title;
  final String artist;
  final String imageUrl;
  final String releaseDate;
  final String genre;

  DetailScreen({
    required this.title,
    required this.artist,
    required this.imageUrl,
    required this.releaseDate,
    required this.genre,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DetailWidget(
        title: title,
        artist: artist,
        imageUrl: imageUrl,
        releaseDate: releaseDate,
        genre: genre,
      ),
    );
  }
}
