// // import "package:dio/dio.dart";

// // import "package:http/http.dart";

// // import "../core/strings.dart";
// // class Movies_Services {
// //   late Dio dio;

// //   Movies_Services() {
// //     BaseOptions options = BaseOptions(
// //       baseUrl: baseUrl,
// //       receiveDataWhenStatusError: true,
// //       receiveTimeout: const Duration(seconds: 60),
// //       connectTimeout: const Duration(seconds: 60),
// //     );
// //     dio = Dio(options);
// //   }

// //   Future<Map<String, dynamic>> getMovies() async {
// //     try {
// //       Response response = await dio.get(moviesUrl);
// //       print(response.data.toString());
// //       return response.data;
// //     } catch (e) {
// //       print(e.toString());
// //       return {};
// //     }
//   // }
// // }
// import 'dart:convert';

// import 'package:http/http.dart' as http;

// import '../core/strings.dart';
// import '../models/moviesmodel.dart';

// // import 'api_config.dart';
// // import 'models/movie.dart';

// class MovieService {
//   static Future<List<Movie>> fetchMovies() async {
//     final response = await http.get(Uri.parse(
//       '${ApiConfig.baseUrl}/movie/popular?api_key=${ApiConfig.apiKey}',
//     ));
//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       final List<dynamic> results = data['results'];
//       return results.map((json) => Movie.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to fetch movies');
//     }
//   }
// }
