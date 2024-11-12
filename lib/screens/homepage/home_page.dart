// // ignore_for_file: camel_case_types, use_key_in_widget_constructors, sized_box_for_whitespace

// import 'dart:ui';

// import 'package:auth/services/movie_services.dart';
// import 'package:flutter/material.dart';

// import '../../constants.dart';
// import '../../core/strings.dart';
// import '../../models/movie_model.dart';
// import '../detailsScreen/Details_Screen.dart';

// class home_page extends StatefulWidget {
//   const home_page();

//   @override
//   State<home_page> createState() => _home_pageState();
// }

// class _home_pageState extends State<home_page> {
//   List<MovieModel> trendingMovies = [];
//   @override
//   void initState() {
//     super.initState();
//     fetchMovies();
//   }

//   void fetchMovies() async {
//     trendingMovies = await MoviesServices().getTrendingMovies();
//     // print("**************");
//     // print(trendingMovies.first.title);
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenHight = MediaQuery.of(context).size.height;
//     final screenwidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SizedBox(
//         height: screenHight,
//         width: screenwidth,
//         child: Stack(
//           children: [
//             Positioned(
//               top: -100,
//               left: -100,
//               child: Container(
//                 height: 200,
//                 width: 200,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Constants.kGreenColor,
//                 ),
//                 child: BackdropFilter(
//                   filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
//                   child: Container(
//                     height: 166,
//                     width: 166,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: -100,
//               right: -100,
//               child: Container(
//                 height: 200,
//                 width: 200,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Constants.kPinkColor,
//                 ),
//                 child: BackdropFilter(
//                   filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
//                   child: Container(
//                     height: 166,
//                     width: 166,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: -100,
//               left: -100,
//               child: Container(
//                 height: 200,
//                 width: 200,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Constants.kGreenColor,
//                 ),
//                 child: BackdropFilter(
//                   filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
//                   child: Container(
//                     height: 166,
//                     width: 166,
//                   ),
//                 ),
//               ),
//             ),
//             SafeArea(
//               bottom: false,
//               child: ListView(
//                 physics: const BouncingScrollPhysics(),
//                 primary: true,
//                 children: [
//                   const SizedBox(
//                     height: 22,
//                   ),
//                   const Text(
//                     'what would you\n like to watch?',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         fontSize: 28,
//                         color: Constants.kWhiteColor,
//                         fontWeight: FontWeight.w700),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   //this is a part of search
//                   // const search2(),
//                   //this is a part of search
//                   //////////////////////////
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(left: 20.0),
//                     child: Text(
//                       'popular movies',
//                       style:
//                           TextStyle(color: Constants.kWhiteColor, fontSize: 20),
//                     ),
//                   ),
//                   SizedBox(
//                     height: screenHight * 0.03,
//                   ),
//                   SizedBox(
//                     height: 160,
//                     child: ListView.builder(
//                         physics: const BouncingScrollPhysics(),
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: trendingMovies.length,
//                         itemBuilder: ((context, index) {
//                           return Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(builder: (context) {
//                                     return DetailsScreen(
//                                       trendingMovies[index],
//                                       movie: trendingMovies[index],
//                                     );
//                                   }),
//                                 );
//                               },
//                               child: Image.network(
//                                 "${ApiConfig.imageBaseUrl}${(trendingMovies[index]).posterPath}",
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           );

//                           // String mask;
//                           // if (index == 0) {
//                           //   mask = Constants.kMaskFirstIndex;
//                           // } else if (index == trendingMovies.length - 1) {
//                           //   mask = Constants.kMaskLastIndex;
//                           // } else {
//                           //   mask = Constants.kMaskCenter;
//                           // }
//                           // return Container(
//                           //   height: 180,
//                           //   child: Column(
//                           //     children: [
//                           //       GestureDetector(
//                           //         child: Container(
//                           //           margin: const EdgeInsets.only(left: 20),
//                           //           height: 160,
//                           //           width: 142,
//                           //           child: MaskedImage(
//                           //             mask: mask,
//                           //             asset:
//                           //                 "${ApiConfig.imageBaseUrl}${(trendingMovies[index]).posterPath}",
//                           //           ),
//                           //         ),
//                           //       ),
//                           //     ],
//                           //   ),
//                           // );
//                         })),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(left: 20.0),
//                     child: Text(
//                       'upcoming movies',
//                       style:
//                           TextStyle(color: Constants.kWhiteColor, fontSize: 20),
//                     ),
//                   ),
//                   SizedBox(
//                     height: screenHight * 0.03,
//                   ),
//                   SizedBox(
//                     height: 160,
//                     child: ListView.builder(
//                         physics: const BouncingScrollPhysics(),
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: trendingMovies.length,
//                         itemBuilder: ((context, index) {
//                           // String mask;
//                           // if (index == 0) {
//                           //   mask = Constants.kMaskFirstIndex;
//                           // } else if (index == trendingMovies.length - 1) {
//                           //   mask = Constants.kMaskLastIndex;
//                           // } else {
//                           //   mask = Constants.kMaskCenter;
//                           // }
//                           // return GestureDetector(
//                           //   child: Container(
//                           //     margin: const EdgeInsets.only(left: 20),
//                           //     height: 160,
//                           //     width: 142,
//                           //     child: MaskedImage(
//                           //       mask: mask,
//                           //       asset:
//                           //           "${ApiConfig.imageBaseUrl}${(trendingMovies[index]).posterPath}",
//                           //     ),
//                           //   ),

// ignore_for_file: camel_case_types, use_key_in_widget_constructors

//                           // );
//                           return Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(builder: (context) {
//                                     return DetailsScreen(
//                                       trendingMovies[index],
//                                       movie: trendingMovies[index],
//                                     );
//                                   }),
//                                 );
//                               },
//                               child: Image.network(
//                                 "${ApiConfig.imageBaseUrl}${(trendingMovies[index]).posterPath}",
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           );
//                         })),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../core/strings.dart';
// import '../../models/movie_model.dart';
import '../../services/movie_services.dart';
// import '../../providers/movies_provider.dart';
import '../detailsScreen/Details_Screen.dart';
import 'provider/HomeProvider.dart';

class home_page extends StatefulWidget {
  const home_page();

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  void initState() {
    super.initState();
    // Fetch movies once the provider is created.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<HomeProvider>(context, listen: false).getTrendingMovies();
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return ChangeNotifierProvider(
      create: (_) => HomeProvider(MoviesServices()),
      builder: (context, _) {
        final trendingMovies = context.watch<HomeProvider>().trendingMovies;

        return Scaffold(
          backgroundColor: Colors.black,
          body: SizedBox(
            height: screenHight,
            width: screenWidth,
            child: Stack(
              children: [
                Positioned(
                  top: -100,
                  left: -100,
                  child: _buildBackgroundCircle(Constants.kGreenColor),
                ),
                Positioned(
                  bottom: -100,
                  right: -100,
                  child: _buildBackgroundCircle(Constants.kPinkColor),
                ),
                Positioned(
                  bottom: -100,
                  left: -100,
                  child: _buildBackgroundCircle(Constants.kGreenColor),
                ),
                SafeArea(
                  bottom: false,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      const SizedBox(height: 22),
                      const Text(
                        'What would you\n like to watch?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          color: Constants.kWhiteColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Popular Movies',
                          style: TextStyle(
                              color: Constants.kWhiteColor, fontSize: 20),
                        ),
                      ),
                      SizedBox(height: screenHight * 0.03),
                      SizedBox(
                        height: 160,
                        child: trendingMovies.isEmpty
                            ? const Center(child: CircularProgressIndicator())
                            : ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: trendingMovies.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DetailsScreen(
                                              trendingMovies[index],
                                              movie: trendingMovies[index],
                                            ),
                                          ),
                                        );
                                      },
                                      child: Image.network(
                                        "${ApiConfig.imageBaseUrl}${trendingMovies[index].posterPath}",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                              ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Upcoming Movies',
                          style: TextStyle(
                              color: Constants.kWhiteColor, fontSize: 20),
                        ),
                      ),
                      SizedBox(height: screenHight * 0.03),
                      SizedBox(
                        height: 160,
                        child: trendingMovies.isEmpty
                            ? const Center(child: CircularProgressIndicator())
                            : ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: trendingMovies.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DetailsScreen(
                                              trendingMovies[index],
                                              movie: trendingMovies[index],
                                            ),
                                          ),
                                        );
                                      },
                                      child: Image.network(
                                        "${ApiConfig.imageBaseUrl}${trendingMovies[index].posterPath}",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                              ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBackgroundCircle(Color color) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
        child: Container(),
      ),
    );
  }
}
