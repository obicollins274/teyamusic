import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../../data/repository/album_repo.dart';

part 'album_state.dart';

class AlbumCubit extends Cubit<AlbumState> {
  final AlbumRepo? repo;
  AlbumCubit({this.repo}) : super(const AlbumState());

  Future<void> getAlbum() async {
    emit(state.copyWith(status: AlbumStatus.loading));
    final repos = AlbumRepo(client: http.Client());
    final resp = await repos.getAlbum();
    if (resp.isNotEmpty) {
      emit(
        state.copyWith(
          status: AlbumStatus.success,
          album:
              resp
                  .map(
                    (e) => Album(
                      title: e.title,
                      artist: e.artist,
                      imageUrl: e.imageUrl,
                      releaseDate: e.releaseDate,
                      genre: e.genre,
                    ),
                  )
                  .toList(),
        ),
      );
    } else {
      emit(state.copyWith(status: AlbumStatus.error));
    }
  }
}
