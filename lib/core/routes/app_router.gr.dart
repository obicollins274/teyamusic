// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [DetailScreen]
class DetailRoute extends PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    required String title,
    required String artist,
    required String imageUrl,
    required String releaseDate,
    required String genre,
    List<PageRouteInfo>? children,
  }) : super(
         DetailRoute.name,
         args: DetailRouteArgs(
           title: title,
           artist: artist,
           imageUrl: imageUrl,
           releaseDate: releaseDate,
           genre: genre,
         ),
         initialChildren: children,
       );

  static const String name = 'DetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailRouteArgs>();
      return DetailScreen(
        title: args.title,
        artist: args.artist,
        imageUrl: args.imageUrl,
        releaseDate: args.releaseDate,
        genre: args.genre,
      );
    },
  );
}

class DetailRouteArgs {
  const DetailRouteArgs({
    required this.title,
    required this.artist,
    required this.imageUrl,
    required this.releaseDate,
    required this.genre,
  });

  final String title;

  final String artist;

  final String imageUrl;

  final String releaseDate;

  final String genre;

  @override
  String toString() {
    return 'DetailRouteArgs{title: $title, artist: $artist, imageUrl: $imageUrl, releaseDate: $releaseDate, genre: $genre}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DetailRouteArgs) return false;
    return title == other.title &&
        artist == other.artist &&
        imageUrl == other.imageUrl &&
        releaseDate == other.releaseDate &&
        genre == other.genre;
  }

  @override
  int get hashCode =>
      title.hashCode ^
      artist.hashCode ^
      imageUrl.hashCode ^
      releaseDate.hashCode ^
      genre.hashCode;
}

/// generated route for
/// [HomePageScreen]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute({List<PageRouteInfo>? children})
    : super(HomePageRoute.name, initialChildren: children);

  static const String name = 'HomePageRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePageScreen();
    },
  );
}
