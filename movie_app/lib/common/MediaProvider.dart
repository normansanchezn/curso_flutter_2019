import 'package:movie_app/common/HttpHandler.dart';
import 'package:movie_app/model/Media.dart';
import 'dart:async';

abstract class MediaProvider {
  Future<List<Media>> fetchMedia();
}

class MovieProvider extends MediaProvider {
  HttpHandler _client = HttpHandler.get();

  @override
  Future<List<Media>> fetchMedia() {
    return _client.fetchMovies();
  }
}

class ShowProvider extends MediaProvider {
  HttpHandler _client = HttpHandler.get();

  @override
  Future<List<Media>> fetchMedia() {
    return _client.fetchShow();
  }
}

enum MediaType {
  movie, show
}