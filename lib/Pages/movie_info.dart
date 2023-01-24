import 'package:flutter/material.dart';
import '../Const/colors.dart';
import '../Const/dimens.dart';
import '../Widgets/about.dart';
import '../Widgets/actors.dart';
import '../Widgets/easy_text_widget.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
            SliverAppBar(
              actions: const [
                Icon(
                  Icons.search,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                )
              ],
              floating: true,
              backgroundColor: Colors.transparent,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Movie Info"),
                background: Image.network(
                  "https://image.tmdb.org/t/p/original/1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          body: Container(
            padding: const EdgeInsets.only(left: 10, top: 10),
            color: kSecondaryColor,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // const SizedBox(width: 10),
                      const Icon(
                        Icons.access_alarm,
                        color: Colors.amber,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "3hours 12mins",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const SizedBox(width: 10),
                      TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kGreyColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Science',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          )),
                      const SizedBox(width: 5),
                      TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kGreyColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Action',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          )),
                      const SizedBox(width: 5),
                      TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kGreyColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Adventure',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          )),
                    ],
                  ),
                  const Icon(Icons.heart_broken),
                  const EasyTextWidget(text: "Storylines"),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ElevatedButton.icon(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.amber,
                            fixedSize: const Size(170, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.play_circle),
                          label: const Text(
                            'PLAY TRAILER',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          )),
                      const SizedBox(width: 10),
                      ElevatedButton.icon(
                          style: TextButton.styleFrom(
                            backgroundColor: kGreyColor,
                            fixedSize: const Size(170, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          label: const Text(
                            'RATE MOVIE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          )),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20,bottom: 10),
                    width: double.infinity,
                    height: 20,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        EasyTextWidget(text: "ACTORS"),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Actors(imageUrl:
                          'https://m.media-amazon.com/images/I/71gyLVWIfIL.jpg',
                            title: 'MovieTiele 2119',),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(
                            imageUrl:
                            'https://m.media-amazon.com/images/I/61ikONHVOAL.jpg',
                            title: 'MovieTiele 27809',
                          ),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(
                            imageUrl:
                            'https://m.media-amazon.com/images/I/51V0Mw23gmL._AC_.jpg',
                            title: 'MovieTiele 27535349',
                          ),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(imageUrl:
                          'https://m.media-amazon.com/images/I/71gyLVWIfIL.jpg',
                            title: 'MovieTiele 2119',),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(
                            imageUrl:
                            'https://m.media-amazon.com/images/I/61ikONHVOAL.jpg',
                            title: 'MovieTiele 27809',
                          ),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(
                            imageUrl:
                            'https://m.media-amazon.com/images/I/51V0Mw23gmL._AC_.jpg',
                            title: 'MovieTiele 27535349',
                          ),
                          SizedBox(
                            width: kSP10x,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10,bottom: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        EasyTextWidget(text: 'ABOUT FILM'),
                        SizedBox(height: 10,),
                        SizedBox(
                            child: About()
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10,bottom: 10,right: 10),
                    width: double.infinity,
                    height: 20,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        EasyTextWidget(text: "CREATORS"),
                        EasyTextWidget(text: "MORE CREATORS")
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10,),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Actors(imageUrl:
                          'https://m.media-amazon.com/images/I/71gyLVWIfIL.jpg',
                            title: 'MovieTiele 2119',),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(
                            imageUrl:
                            'https://m.media-amazon.com/images/I/61ikONHVOAL.jpg',
                            title: 'MovieTiele 27809',
                          ),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(
                            imageUrl:
                            'https://m.media-amazon.com/images/I/51V0Mw23gmL._AC_.jpg',
                            title: 'MovieTiele 27535349',
                          ),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(imageUrl:
                          'https://m.media-amazon.com/images/I/71gyLVWIfIL.jpg',
                            title: 'MovieTiele 2119',),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(
                            imageUrl:
                            'https://m.media-amazon.com/images/I/61ikONHVOAL.jpg',
                            title: 'MovieTiele 27809',
                          ),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(
                            imageUrl:
                            'https://m.media-amazon.com/images/I/51V0Mw23gmL._AC_.jpg',
                            title: 'MovieTiele 27535349',
                          ),
                          SizedBox(
                            width: kSP10x,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
