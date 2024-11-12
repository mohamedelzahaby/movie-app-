// ignore_for_file: file_names

import 'package:flutter/foundation.dart';

import '../../../models/movie_model.dart';
import '../../../services/movie_services.dart';
// Assuming this path

class HomeProvider extends ChangeNotifier {
  final MoviesServices moviesServices;
  List<MovieModel> _trendingMovies = [];

  HomeProvider(this.moviesServices) {
    getTrendingMovies();
  }

  List<MovieModel> get trendingMovies => _trendingMovies;

  Future<void> getTrendingMovies() async {
    try {
      _trendingMovies = await moviesServices.getTrendingMovies();
      notifyListeners(); // Notify UI of changes
    } catch (e) {
      // Handle errors gracefully (e.g., display error message)
      debugPrint('Error fetching trending movies: $e');
    }
  }
}
