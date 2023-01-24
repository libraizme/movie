import 'package:flutter/material.dart';
import 'package:movie_app_poc/Widgets/easy_text_widget.dart';
import '../Category/BestActors.dart';
import '../Category/MovieShowcase.dart';
import '../Category/MoviesAndSeries.dart';
import '../Category/Showtimes.dart';
import '../Const/colors.dart';
import '../Const/dimens.dart';
import '../Category/Carousel.dart';
import '../Widgets/tabbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        backgroundColor: kSecondaryColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kSecondaryColor,
          leading: const Icon(
            Icons.menu,
            size: kMenuIconSize,
          ),
          title: const Text("Discover"),
          actions: const [
            Icon(
              Icons.search,
              size: kSearchIconSize,
            ),
            SizedBox(
              width: kSP10x,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey,
              child: const Carousel(),
            ),
            Container(
                width: double.infinity,
                height: kSP30x,
                margin: const EdgeInsets.only(top: kSP10x, left: kSP10x),
                child:
                const EasyTextWidget(text: "BEST POPULAR MOVIES & SERIES")),
            Container(
              margin: const EdgeInsets.only(left: kSP10x, bottom: kSP10x),
              child: const MoviesSeries(),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15,bottom: 10,top: 10),
              width: 350,
              height: 150,
              color: kPrimaryColor,
              child: const ShowTimes(),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
              child: const TabTest(),
          ),
            Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: 20,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  EasyTextWidget(text: "SHOWCASES"),
                  EasyTextWidget(text: "MORE SHOWCASES")
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10,bottom: 10,right: 10),
              child: const MovieShowcase(),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: 20,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  EasyTextWidget(text: "BEST ACTORS"),
                  EasyTextWidget(text: "MORE ACTORS")
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10,bottom: 10,right: 10),
              child: const BestActors(),
            ),
          ]),
        ),
      );
}