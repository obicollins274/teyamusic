class AlbumModel {
  final String title;
  final String artist;
  final String imageUrl;
  final String releaseDate;
  final String genre;

  AlbumModel({
    required this.title,
    required this.artist,
    required this.imageUrl,
    required this.releaseDate,
    required this.genre,
  });

  factory AlbumModel.fromJson(Map<String, dynamic> json) {
    return AlbumModel(
      title: json['im:name']['label'],
      artist: json['im:artist']['label'],
      imageUrl: json['im:image'].last['label'],
      releaseDate: json['im:releaseDate']['attributes']['label'],
      genre: json['category']['attributes']['label'],
    );
  }
}
