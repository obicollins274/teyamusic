import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '/core/routes/app_router.dart';
import '/core/utils/styles.dart';
import '/features/album/presentation/bloc/album_cubit.dart';

class HomePageWidget extends StatelessWidget {
  HomePageWidget({super.key});

  final bloc = AlbumCubit();

  @override
  Widget build(BuildContext context) {
    bloc.getAlbum();
    return Scaffold(
      backgroundColor: teyaGrey,
      appBar: AppBar(
        title: Text(
          "iTunes Top Albums",
          style: const TextStyle(
            color: teyaWhite,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: BlocBuilder<AlbumCubit, AlbumState>(
        bloc: bloc,
        builder: (context, state) {
          if (state.status == AlbumStatus.success) {
            return SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: bloc.state.album.length,
                padding: const EdgeInsets.all(2.5),
                itemBuilder: (context, index) {
                  var result = bloc.state.album[index];
                  return Card(
                    elevation: 1,
                    color: teyaGrey,
                    borderOnForeground: true,
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(result.imageUrl!),
                        ),
                        titleAlignment: ListTileTitleAlignment.center,
                        title: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                          child: Text(
                            result.title!,
                            style: const TextStyle(
                              fontSize: 14,
                              color: teyaWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Text(
                          result.artist!,
                          style: const TextStyle(
                            fontSize: 11,
                            color: teyaWhite,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        onTap: () {
                          context.router.push(
                            DetailRoute(
                              title: result.title!,
                              artist: result.artist!,
                              imageUrl: result.imageUrl!,
                              releaseDate: result.releaseDate!,
                              genre: result.genre!,
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            );
          }
          return Skeletonizer(
            enabled: true,
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 1,
                  color: teyaGrey,
                  borderOnForeground: true,
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    child: ListTile(
                      title: Text("The Title of the Music"),
                      subtitle: const Text('The Artist name'),
                      leading: const Icon(Icons.music_note, size: 50),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
