// ignore_for_file: file_names

import 'package:auth/models/movie_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(MovieModel trendingMovi,
      {super.key, required this.movie});
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 12, 24),
        body: CustomScrollView(slivers: [
          SliverAppBar.large(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                    )),
              ),
            ),
            backgroundColor: Colors.black,
            expandedHeight: 400,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "${movie.title}",
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image.network(
                  "https://image.tmdb.org/t/p/w500${movie.backdropPath}",
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Overview",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    // height: 300,
                    child: Text(
                      "${movie.overview}",
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ]),
          ))
        ])
        // Center(
        //   child: Text(
        //   "${movie.title}",
        // )),

        );
  }
}
