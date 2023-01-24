import 'package:flutter/material.dart';
import '../Const/dimens.dart';
import '../Widgets/movie_card.dart';

class MoviesSeries extends StatelessWidget{
  const MoviesSeries ({super.key});

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        MovieCard(
          imageUrl:
          'https://image.tmdb.org/t/p/original/1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg',
          title: 'MovieTiele 2009',
          rating: 3.4,
        ),
        SizedBox(
          width: kSP10x,
        ),
        MovieCard(
          imageUrl:
          'https://pbs.twimg.com/media/DyomVLqX0AA2iOV?format=jpg',
          title: 'MovieTiele 2010',
          rating: 5.1,
        ),
        SizedBox(
          width: kSP10x,
        ),
        MovieCard(
          imageUrl:
          'https://m.media-amazon.com/images/I/71krfsS5kNL.jpg',
          title: 'MovieTiele 2019',
          rating: 2.7,
        ),
        SizedBox(
          width: kSP10x,
        ),
        MovieCard(
          imageUrl:
          'https://m.media-amazon.com/images/I/71gyLVWIfIL.jpg',
          title: 'MovieTiele 2119',
          rating: 1.9,
        ),
        SizedBox(
          width: kSP10x,
        ),
        MovieCard(
          imageUrl:
          'https://m.media-amazon.com/images/I/61ikONHVOAL.jpg',
          title: 'MovieTiele 27809',
          rating: 4.5,
        ),
        SizedBox(
          width: kSP10x,
        ),
        MovieCard(
          imageUrl:
          'https://m.media-amazon.com/images/I/51V0Mw23gmL._AC_.jpg',
          title: 'MovieTiele 27535349',
          rating: 2.5,
        ),
        SizedBox(
          width: kSP10x,
        ),
        MovieCard(
          imageUrl:
          'https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg',
          title: 'MovieTiele 234609',
          rating: 5.3,
        ),
        SizedBox(
          width: kSP10x,
        ),
      ],
    ),
  );

}