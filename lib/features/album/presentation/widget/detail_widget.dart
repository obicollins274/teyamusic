import 'package:flutter/material.dart';

import '/core/utils/styles.dart';

class DetailWidget extends StatelessWidget {
  final String title;
  final String artist;
  final String imageUrl;
  final String releaseDate;
  final String genre;

  DetailWidget({
    required this.title,
    required this.artist,
    required this.imageUrl,
    required this.releaseDate,
    required this.genre,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: teyaGrey,
      appBar: AppBar(
        leading: BackButton(color: teyaWhite),
        title: Text(
          "Album Details",
          style: const TextStyle(
            color: teyaWhite,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: SizedBox(
                width: 200,
                height: 200,
                child: Image.network(imageUrl),
              ),
            ),
            SizedBox(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: teyaWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              elevation: 1,
              color: teyaGrey,
              borderOnForeground: true,
              child: Container(
                padding: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: ListTile(
                  leading: Text(
                    'Artist',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
                      color: teyaWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    artist,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      color: teyaWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 1,
              color: teyaGrey,
              borderOnForeground: true,
              child: Container(
                padding: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: ListTile(
                  leading: Text(
                    'Genre',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
                      color: teyaWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    genre,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      color: teyaWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 1,
              color: teyaGrey,
              borderOnForeground: true,
              child: Container(
                padding: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: ListTile(
                  leading: Text(
                    'Released on',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
                      color: teyaWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    releaseDate,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      color: teyaWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
