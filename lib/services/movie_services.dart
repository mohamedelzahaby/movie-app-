// import 'dart:convert';

// ignore_for_file: avoid_print

import 'package:auth/core/strings.dart';
import 'package:auth/models/movie_model.dart';
import 'package:dio/dio.dart';

class MoviesServices {
  late Dio dio;

  MoviesServices() {
    BaseOptions options = BaseOptions(
      baseUrl: ApiConfig.trendingBaseUrl,
      receiveDataWhenStatusError: true,
      receiveTimeout: const Duration(seconds: 60),
      connectTimeout: const Duration(seconds: 60),
    );
    dio = Dio(options);
  }

  

  Future<List<MovieModel>> getTrendingMovies() async {
    try {
      final response = await dio.get(ApiConfig.trendingBaseUrl);
      if (response.statusCode == 200) {
        final decodedData = response.data['results'] as List;
        // print(decodedData);
        return decodedData.map((e) => MovieModel.fromJson(e)).toList();
      }
      return [];
      // else {

      //   throw Exception(response.statusMessage);
      // }
    } on Exception catch (e) {
      // print("*****************");
      print(e.toString());
      // print("*****************");
      return [];
    }
  }
}
