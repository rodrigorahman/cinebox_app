import 'package:cinebox/ui/core/widgets/movie_card.dart';
import 'package:flutter/material.dart';

class MoviesBox extends StatelessWidget {
  final String title;
  final bool vertical;

  const MoviesBox({super.key, required this.title, this.vertical = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 32, bottom: 24),
          child: Text(
            title,
            style:
                Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
            textAlign: TextAlign.start,
          ),
        ),
        Visibility(
          visible: !vertical,
          replacement: Center(
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              runAlignment: WrapAlignment.center,
              children: [
                MovieCard(),
                MovieCard(),
                MovieCard(),
                MovieCard(),
                MovieCard(),
                MovieCard(),
                MovieCard(),
                MovieCard(),
                MovieCard(),
                MovieCard(),
                MovieCard(),
              ],
            ),
          ),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 253,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 20),
              itemCount: 100,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 16),
                  child: MovieCard(),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
