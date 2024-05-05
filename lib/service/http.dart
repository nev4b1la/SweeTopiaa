import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:online_shop/models/movie.dart';

class HttpService {
  static const String baseUrl = 'https://movie.tukanginyuk.com/api/getmovie';

  Future<List<Movie>> getPopularMovies() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> moviesData = data['data'];
      return moviesData.map((json) => Movie.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load popular movies: ${response.statusCode}');
    }
  }
}
