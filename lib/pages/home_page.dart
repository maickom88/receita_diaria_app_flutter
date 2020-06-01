import 'package:flutter/material.dart';
import 'package:receita_youtube_test/pages/widgets/home_list_icons_widgets.dart';
import 'package:receita_youtube_test/shared/consts_url_images.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'widgets/home_list_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex;
  Map<int, Offset> offSetPage = {
    0: Offset(0, 0),
    1: Offset(0, 20),
    2: Offset(0, 40),
    3: Offset(0, 40),
    4: Offset(0, 20)
  };
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;

    CarouselPageChangedReason n = CarouselPageChangedReason.controller;

    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(ConstsUrlImages.logo, height: _height * 0.13),
                  Column(
                    children: <Widget>[
                      Container(
                        width: _width * 0.16,
                        height: _height * 0.09,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            ConstsUrlImages.image2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: _width * 0.16,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              width: _width * 0.16,
                              height: _height * 0.04,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(40)),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                margin: EdgeInsets.only(top: 6),
                                width: _width * 0.09,
                                height: _height * 0.05,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.black,
                                ),
                                child: Icon(Icons.brightness_2),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: _height * 0.08,
                    width: _width * 0.70,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                width: 0, color: Colors.transparent)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                width: 0, color: Colors.transparent)),
                        filled: true,
                        fillColor: Colors.grey[800],
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        hintText: 'Procurar',
                        hintStyle: TextStyle(
                          fontSize: 26,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: _width * 0.15,
                    height: _height * 0.08,
                    decoration: BoxDecoration(
                      color: Color(0xffb9b741),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 5,
                          color: Color(0xffb9b741),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.filter_list,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Receitas',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: ' Populares',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                width: double.infinity,
                height: _height * 0.33,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    HomeListWidget(
                      imageBackground: ConstsUrlImages.imageNetwork1,
                      avatarImage: ConstsUrlImages.image2,
                      textTitle: "Ovo Gourmet",
                      colorFull: Color(0xffb9b741),
                    ),
                    HomeListWidget(
                        imageBackground: ConstsUrlImages.imageNetwork2,
                        avatarImage: ConstsUrlImages.image1,
                        textTitle: "Hamburguer Artesenal",
                        colorFull: Color(0xFF4171B9)),
                    HomeListWidget(
                        imageBackground: ConstsUrlImages.imageNetwork3,
                        avatarImage: ConstsUrlImages.image1,
                        textTitle: "Hamburguer Artesenal",
                        colorFull: Color(0xFFAF41B9)),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  text: 'Categorias',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(

                  // autoPlayCurve: Curves.elasticOut,
                  // autoPlay: true,
                  height: _height * 0.18,
                  carouselController: n,
                  viewportFraction: 0.3,
                  onPageChanged: (index, n) {
                    setState(() {
                      currentIndex = index;
                      print(currentIndex);
                      if (currentIndex == 0) {
                        offSetPage = {
                          0: Offset(0, 0),
                          1: Offset(0, 20),
                          2: Offset(0, 40),
                          3: Offset(0, 40),
                          4: Offset(0, 20)
                        };
                      } else if (currentIndex == 1) {
                        offSetPage[0] = Offset(0, 20);
                        offSetPage[1] = Offset(0, 0);
                        offSetPage[2] = Offset(0, 20);
                        offSetPage[3] = Offset(0, 40);
                        offSetPage[4] = Offset(0, 40);
                      } else if (currentIndex == 2) {
                        offSetPage[0] = Offset(0, 40);
                        offSetPage[1] = Offset(0, 20);
                        offSetPage[2] = Offset(0, 0);
                        offSetPage[3] = Offset(0, 20);
                        offSetPage[4] = Offset(0, 40);
                      } else if (currentIndex == 3) {
                        offSetPage[0] = Offset(0, 40);
                        offSetPage[1] = Offset(0, 40);
                        offSetPage[2] = Offset(0, 20);
                        offSetPage[3] = Offset(0, 0);
                        offSetPage[4] = Offset(0, 20);
                      } else if (currentIndex == 4) {
                        offSetPage[0] = Offset(0, 20);
                        offSetPage[1] = Offset(0, 40);
                        offSetPage[2] = Offset(0, 40);
                        offSetPage[3] = Offset(0, 20);
                        offSetPage[4] = Offset(0, 0);
                      }
                    });
                  }),
              items: <Widget>[
                Transform.translate(
                  offset: offSetPage[0],
                  child: HomeListIcons(
                    titleIcons: 'Burgão',
                    isActive: currentIndex == 0,
                    image: ConstsUrlImages.icon1,
                  ),
                ),
                Transform.translate(
                  offset: offSetPage[1],
                  child: HomeListIcons(
                      titleIcons: 'Pizza',
                      isActive: currentIndex == 1,
                      image: ConstsUrlImages.icon2),
                ),
                Transform.translate(
                  offset: offSetPage[2],
                  child: HomeListIcons(
                      titleIcons: 'Vegano',
                      isActive: currentIndex == 2,
                      image: ConstsUrlImages.icon3),
                ),
                Transform.translate(
                  offset: offSetPage[3],
                  child: HomeListIcons(
                      titleIcons: 'Sobremesas',
                      isActive: currentIndex == 3,
                      image: ConstsUrlImages.icon1),
                ),
                Transform.translate(
                  offset: offSetPage[4],
                  child: HomeListIcons(
                      titleIcons: 'Gelados',
                      isActive: currentIndex == 4,
                      image: ConstsUrlImages.icon2),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: _height * 0.13,
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey),
                      child: Icon(Icons.home,
                          size: _height * 0.06, color: Colors.yellow),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey),
                      child: Icon(Icons.search,
                          size: _height * 0.06, color: Colors.white),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom:15),
                  child: FloatingActionButton(
                    onPressed: () {},
                    elevation: 10,
                    backgroundColor: Color(0xff7c0b89,),
                    child: Icon(Icons.send, color: Colors.white),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey),
                      child: Icon(Icons.bookmark,
                          size: _height * 0.06, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey),
                      child: Icon(Icons.person,
                          size: _height * 0.06, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
