part of 'album_cubit.dart';

enum AlbumStatus { initial, loading, success, error }

class Album extends Equatable {
  final String? title;
  final String? artist;
  final String? imageUrl;
  final String? releaseDate;
  final String? genre;

  const Album({
    this.title,
    this.artist,
    this.imageUrl,
    this.releaseDate,
    this.genre,
  });

  @override
  List<Object?> get props => [title, artist, imageUrl, releaseDate, genre];
}

class AlbumState extends Equatable {
  final AlbumStatus? status;
  final List<Album> album;

  const AlbumState({this.status = AlbumStatus.initial, this.album = const []});

  AlbumState copyWith({AlbumStatus? status, List<Album>? album}) {
    return AlbumState(
      status: status ?? this.status,
      album: album ?? this.album,
    );
  }

  @override
  List<Object?> get props => [status, album];
}
