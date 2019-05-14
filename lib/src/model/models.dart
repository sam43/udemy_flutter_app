import 'dart:convert';

class ImageModel {
  int id;
  int albumId;
  String title;
  String url;

  ImageModel(this.id, this.albumId, this.title, this.url);

  ImageModel.fromJson(Map<String, dynamic> jsonResponse) {
    id = jsonResponse['id'];
    albumId = jsonResponse['albumId'];
    title = jsonResponse['title'];
    url = jsonResponse['url'];
  }

  // Alternately
  /*ImageModel.fromJson(Map<String, dynamic> jsonResponse)
      : id = jsonResponse['id'],
        albumId = jsonResponse['albumId'],
        title = jsonResponse['title'],
        url = jsonResponse['url'];*/
}
