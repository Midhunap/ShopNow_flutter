import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop_now/services/remote_services/remote_banner_service.dart';
import '../../controllers/home_controller.dart';
import '../../widgets/custom_app_bar.dart';
import 'package:get/get.dart';
import 'package:shop_now/controllers/controllers.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Shop Now',
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            viewportFraction: 0.9,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
          ),
          items: imageSliders,
        ),
      ),
    );
  }
}

List<String> bannerImages = [
  'images/banner/banner1.jpg',
  'images/banner/banner2.jpg',
  'images/banner/banner3.jpg',
];

final List<Widget> imageSliders = bannerImages
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        'No. ${bannerImages.indexOf(item)} image',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ))
    .toList();
