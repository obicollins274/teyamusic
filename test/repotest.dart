import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:teyamusic/features/album/data/model/album_model.dart';
import 'package:teyamusic/features/album/data/repository/album_repo.dart';

import 'albumrepo_test.mocks.dart';

void main() {
  late MockClient mockClient;
  late AlbumRepo repo;

  setUp(() {
    mockClient = MockClient();
    repo = AlbumRepo(client: mockClient);
  });

  test(
    'returns list of AlbumModel if http call completes successfully',
    () async {
      const mockJson = '''
   {
  "feed": {
    "entry": [
      {
        "im:name": { "label": "Test Album" },
        "im:artist": { "label": "Test Artist" },
        "im:image": [
          { "label": "http://teyamusic.com/music/image1.jpg" },
          { "label": "http://teyamusic.com/music/image2.jpg" },
          { "label": "http://teyamusic.com/music/image3.jpg" }
        ],
        "im:releaseDate": { "attributes": { "label": "2025-07-15" }},
        "category": { "attributes": { "label": "Pop" } }
      }
    ]
  }
}
  ''';
      when(
        mockClient.get(any),
      ).thenAnswer((_) async => http.Response(mockJson, 200));

      // Act
      final result = await repo.getAlbum();

      // Assert
      expect(result, isA<List<AlbumModel>>());
      expect(result.length, 1);
      expect(result.first.title, 'Test Album');
      expect(result.first.artist, 'Test Artist');
      expect(result.first.genre, 'Pop');
    },
  );

  test('throws Exception if http call completes with error', () async {
    when(
      mockClient.get(any),
    ).thenAnswer((_) async => http.Response('Not Found', 404));

    expect(repo.getAlbum(), throwsException);
  });
}
