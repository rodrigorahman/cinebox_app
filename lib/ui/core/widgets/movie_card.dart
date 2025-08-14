import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinebox/ui/core/commands/favorite_movie_command.dart';
import 'package:cinebox/ui/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieCard extends ConsumerStatefulWidget {
  final int id;
  final String title;
  final int year;
  final String imageUrl;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;

  const MovieCard({
    super.key,
    required this.id,
    required this.title,
    required this.year,
    required this.imageUrl,
    required this.isFavorite,
    this.onFavoriteTap,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MovieCardState();
}

class _MovieCardState extends ConsumerState<MovieCard> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(favoriteMovieCommandProvider(widget.id).notifier)
          .setFavorite(widget.isFavorite);
    });
  }

  @override
  Widget build(BuildContext context) {
    final isFavorite = ref.watch(favoriteMovieCommandProvider(widget.id));
    return Stack(
      children: [
        SizedBox(
          width: 148,
          height: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                imageUrl: widget.imageUrl,
                imageBuilder: (context, imageProvider) {
                  return Container(
                    width: 148,
                    height: 184,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) {
                  return Container(
                    width: 148,
                    height: 184,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey,
                    ),
                    child: Icon(
                      Icons.error,
                      color: Colors.red,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '${widget.year}',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: AppColors.lightGrey,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          bottom: 50,
          child: Material(
            elevation: 8,
            borderRadius: BorderRadius.circular(30),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? AppColors.redColor : AppColors.lightGrey,
                  size: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
