import 'package:flutter/material.dart';
import 'package:receita_youtube_test/shared/consts_url_images.dart';

class HomeListWidget extends StatefulWidget {
  final String imageBackground;
  final String textTitle;
  final String avatarImage;
  final Color colorFull;
  const HomeListWidget(
      {Key key,
      this.imageBackground,
      this.textTitle,
      this.avatarImage,
      this.colorFull})
      : super(key: key);
  @override
  _HomeListWidgetState createState() => _HomeListWidgetState();
}

class _HomeListWidgetState extends State<HomeListWidget> {
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: _width * 0.45,
      child: Stack(
        children: <Widget>[
          Container(
            width: _width * 0.37,
            height: _height * 0.30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                widget.imageBackground,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: _width * 0.37,
            height: _height * 0.30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, widget.colorFull],
              ),
            ),
          ),
          Positioned(
            top: _height * 0.01,
            left: _width * 0.27,
            child: Icon(Icons.favorite),
          ),
          Positioned(
            top: _height * 0.18,
            left: _width * 0.01,
            child: Container(
              width: _width * 0.37,
              height: _height * 0.30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.textTitle,
                    style: TextStyle(
                        height: 0.9,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: _height * 0.24,
            left: _width * 0.28,
            child: Container(
              width: _width * 0.18,
              height: _width * 0.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 7, color: Color(0xFF121212)),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(widget.avatarImage, fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }
}
