import '/core/utils/api.dart';

final apiEndPoint = API();

class AlbumEndpoint {
  getAlbum() {
    final String urlPath = "${apiEndPoint.apiUrlPath}/limit=100/json";
    return urlPath;
  }
}
