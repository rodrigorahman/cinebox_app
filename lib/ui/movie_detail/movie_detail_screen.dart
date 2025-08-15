import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinebox/ui/core/themes/colors.dart';
import 'package:cinebox/ui/core/themes/text_styles.dart';
import 'package:cinebox/ui/movie_detail/widget/cast_box.dart';
import 'package:cinebox/ui/movie_detail/widget/movie_trailer.dart';
import 'package:cinebox/ui/movie_detail/widget/rating_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieDetailScreen extends ConsumerStatefulWidget {
  const MovieDetailScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MovieDetailScreenState();
}

class _MovieDetailScreenState extends ConsumerState<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Filme'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 24,
          children: [
            SizedBox(
              height: 278,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://img.odcdn.com.br/wp-content/uploads/2021/08/Vdg54I.jpg',
                      placeholder: (context, url) => Container(
                        width: 160,
                        color: AppColors.lightGrey,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Text(
                    'Luca',
                    style: AppTextStyles.titleLarge,
                  ),
                  RatingStars(
                    starCount: 5,
                    starColor: AppColors.yellow,
                    starSize: 14,
                    valueLabelVisibility: false,
                    value: 2.7,
                  ),
                  Text(
                    'Animação, Comédia, Família, Fantasia',
                    style: AppTextStyles.lightGreyRegular,
                  ),
                  Text(
                    '2021 (USA) | 1h41',
                    style: AppTextStyles.regularSmall,
                  ),
                  Text(
                    'Luca vive aventuras com seu novo melhor amigo, mas a diversão é ameaçada por um segredo: seu amigo é um monstro marinho de outro mundo que fica abaixo da superfície da água.',
                    style: AppTextStyles.regularSmall,
                  ),
                  CastBox(),
                  MovieTrailer(),
                  const SizedBox(
                    height: 30,
                  ),
                  RatingPanel(
                    voteAverage: 20,
                    voteCount: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
