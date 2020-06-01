import 'package:flutter/material.dart';

class HomeListIcons extends StatefulWidget {
  final int currentIndex;
  final String image;
  final String titleIcons;
  final bool isActive;
  const HomeListIcons(
      {Key key, this.currentIndex, this.image, this.titleIcons, this.isActive})
      : super(key: key);

  @override
  _HomeListIconsState createState() => _HomeListIconsState();
}

class _HomeListIconsState extends State<HomeListIcons> {
  int page0;
  @override
  void initState() {
    super.initState();
    print(widget.isActive);
    page0 = 20;
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: widget.isActive ? Offset(0, 5) : Offset(0, 20),
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              widget.image,
              height: 40,
            ),
            Text(
              widget.titleIcons,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                color: Colors.grey[400]
              ),
            )
          ],
        ),
      ),
    );
  }
}
