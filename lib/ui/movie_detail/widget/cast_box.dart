import 'package:cinebox/ui/core/themes/colors.dart';
import 'package:cinebox/ui/core/themes/text_styles.dart';
import 'package:cinebox/ui/movie_detail/widget/actor_card.dart';
import 'package:flutter/material.dart';

class CastBox extends StatelessWidget {
  const CastBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(
        context,
      ).copyWith(dividerColor: AppColors.lightGrey.withAlpha(25)),
      child: ExpansionTile(
        dense: true,

        tilePadding: EdgeInsets.only(left: 0, right: 0),
        childrenPadding: EdgeInsets.symmetric(vertical: 10),
        title: Text(
          'Elenco',
          style: AppTextStyles.regularSmall,
        ),
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
                return ActorCard(
                  imageUrl:
                      'https://img.odcdn.com.br/wp-content/uploads/2021/08/Vdg54I.jpg',
                  name: 'Rodrigo Rahman',
                  character: 'Coringa',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
