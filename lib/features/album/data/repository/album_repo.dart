import 'dart:convert';

import 'package:http/http.dart' as http;

import '/features/album/data/model/album_model.dart';
import '../endpoint/album_endpoint.dart';

class AlbumRepo {
  final http.Client client;

  AlbumRepo({required this.client});

  Future<List<AlbumModel>> getAlbum() async {
    final response = await client.get(Uri.parse(AlbumEndpoint().getAlbum()));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List albumsJson = data['feed']['entry'];
      return albumsJson.map((json) => AlbumModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load album from iTunes RSS Feed');
    }
  }
}
