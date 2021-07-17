import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odonto_app_event/src/home/widgets/navigation_bar_widget.dart';
import 'package:odonto_app_event/ui/imagens.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            automaticallyImplyLeading: false,
          ),
          body: Column(
            children: [
              Card(
                borderOnForeground: true,
                margin: EdgeInsets.only(left: 14.w, right: 14.w),
                child: ImagesCarousel(),
              ),
            ],
          ),
          bottomNavigationBar: NavigationBar(
            bottomNavigationKey: _bottomNavigationKey,
          ),
        );
      },
    );
  }
}

class ImagesCarousel extends StatelessWidget {
  const ImagesCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 25.h,
        viewportFraction: 1,
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
      items: [
        Image.asset(Imagens.foto1Png),
        Image.asset(Imagens.foto2Png),
      ],
    );
  }
}
