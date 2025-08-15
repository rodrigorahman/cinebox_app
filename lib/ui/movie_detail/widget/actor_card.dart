import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinebox/ui/core/themes/colors.dart';
import 'package:cinebox/ui/core/themes/resource.dart';
import 'package:cinebox/ui/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class ActorCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String character;

  const ActorCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 101,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
            placeholder: (context, url) => Container(
              padding: EdgeInsets.all(30),
              width: 85,
              height: 85,
              color: AppColors.lightGrey,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(
                    R.ASSETS_IMAGES_NO_IMAGE_PNG,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            imageBuilder: (context, imageProvider) {
              return Container(
                width: 85,
                height: 85,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
          Text(
            name,
            style: AppTextStyles.boldSmall.copyWith(fontSize: 12),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            character,
            style: AppTextStyles.lightGreySmall.copyWith(fontSize: 12),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
