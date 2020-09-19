import 'package:flutter/material.dart';
import 'package:sayhappi/Animation/FadeAnimation.dart';
import 'package:sayhappi/pages/payment_page.dart';
import 'package:sayhappi/utils/responsive.dart';
import 'package:sayhappi/utils/restaurants.dart';

class DetailsFood extends StatefulWidget {
  DetailsFood({Key key}) : super(key: key);

  @override
  _DetailsFoodState createState() => _DetailsFoodState();
}

class _DetailsFoodState extends State<DetailsFood> {
  int currentIndex = 0;

  void _next() {
    setState(() {
      if (currentIndex < restaurants.length - 1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _preve() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
      // appBar: AppBar(
      //   leading: BackButton(color: Colors.black),
      //   elevation: 0.0,
      //   backgroundColor: Colors.grey.withOpacity(.1),
      //   // title: Text(
      //   //   "Cart",
      //   //   style: TextStyle(color: Colors.black),
      //   // ),
      //   centerTitle: false,
      // ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: GestureDetector(
              onHorizontalDragEnd: (DragEndDetails details) {
                if (details.velocity.pixelsPerSecond.dx > 0) {
                  _preve();
                } else if (details.velocity.pixelsPerSecond.dx < 0) {
                  _next();
                }
              },
              child: FadeAnimation(
                .8,
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage(restaurants[currentIndex]["img"]),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.grey[700].withOpacity(.9),
                              Colors.grey.withOpacity(.0),
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FadeAnimation(
                              1,
                              Container(
                                width: 90,
                                margin: EdgeInsets.only(bottom: 60),
                                child: Row(
                                  children: _buildIndicator(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: Transform.translate(
                          offset: Offset(0, -40),
                          child: FadeAnimation(
                            1,
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: <Widget>[
                                      FadeAnimation(
                                        1.4,
                                        Text(
                                          restaurants[currentIndex]["rating"],
                                          style: TextStyle(
                                              color: Colors.yellow[700],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      FadeAnimation(
                                        1.5,
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.star,
                                              size: 18,
                                              color: Colors.yellow[700],
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 18,
                                              color: Colors.yellow[700],
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 18,
                                              color: Colors.yellow[700],
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 18,
                                              color: Colors.yellow[700],
                                            ),
                                            Icon(
                                              Icons.star_half,
                                              size: 18,
                                              color: Colors.yellow[700],
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "(4.2/70 reviews)",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  FadeAnimation(
                                    1.3,
                                    Text(
                                      restaurants[currentIndex]["title"],
                                      style: TextStyle(
                                          color: Colors.grey[800],
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  FadeAnimation(
                                    1.3,
                                    Text(
                                      restaurants[currentIndex]["address"],
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  FadeAnimation(
                                    1.3,
                                    Row(
                                      children: [
                                        Text(
                                          restaurants[currentIndex]["points"],
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Points",
                                          style: TextStyle(
                                              color: Colors.pinkAccent,
                                              fontSize: responsive.dp(1.8)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: FadeAnimation(
                                        1.7,
                                        GestureDetector(
                                          onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  PaymentMainPage(),
                                            ),
                                          ),
                                          child: Container(
                                            height: 45,
                                            decoration: BoxDecoration(
                                                color: Colors.yellow[700],
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "ADD TO CART",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 15,
            child: SafeArea(child: BackButton(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: 4,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isActive ? Colors.grey[800] : Colors.white),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < restaurants.length; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
