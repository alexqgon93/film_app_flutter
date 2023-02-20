import 'package:film_app_flutter/providers/movies_provider.dart';
import 'package:film_app_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Peliculas en cines'),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.search_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Principal cards
              CardSwiper(movies: moviesProvider.onDisplayMovies),
              // Movie Slider
              MovieSlider(
                  movies: moviesProvider.onPopularMovies,
                  title: 'Populares'), // opcional),
            ],
          ),
        ));
  }
}
