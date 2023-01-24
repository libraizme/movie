import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../Const/colors.dart';
import '../Const/dimens.dart';
import '../Pages/movie_info.dart';
import 'cache_network_image.dart';

class MovieCard extends StatelessWidget{
  const MovieCard({Key? key,required this.imageUrl,required this.title,required this.rating}) : super(key: key);
  final String imageUrl;
  final String title;
  final double rating;

  @override
  Widget build(BuildContext context) => SizedBox(
    child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                    return const MovieInfo();
                  })
              );
            },
            child: SizedBox(
              width: 100,
              height: 150,
              child: CacheNetworkImageWidget(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 3),
          SizedBox(
              width: 100,
              child: Text(title,style:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: kFontSize14x, color: kWhiteColor),)),
          const SizedBox(height: 4),
          Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  rating.toString(),
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    color: kWhiteColor,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                RatingBar.builder(
                  glow: true,
                  glowRadius: 2,
                  itemSize: 15,
                  initialRating: rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(
                      horizontal: 0.0),
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )
              ])
        ]),
  );

}