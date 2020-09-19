import 'package:flutter/material.dart';
import 'package:sayhappi/pages/payment_page.dart';

class TopupPage extends StatefulWidget {
  TopupPage({Key key}) : super(key: key);

  @override
  _TopupPageState createState() => _TopupPageState();
}

class _TopupPageState extends State<TopupPage> {
  int _onTap = 0;

  List topup = ["30", "50", "80", "100"];
  List points = ["300", "500", "800", "1000"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Select your topup points",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildTopup(
                      "30",
                      "300",
                      1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildTopup(
                      "50",
                      "500",
                      2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildTopup(
                      "80",
                      "800",
                      3,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildTopup(
                      "100",
                      "1000",
                      4,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 40,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (BuildContext context) => PaymentMainPage(),
                  //   ),
                  // );
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.yellow[700],
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      "Topup now",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  buildTopup(ringgit, point, enter) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _onTap = enter;
        });
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(new Radius.circular(10.0)),
          gradient: _onTap == enter
              ? LinearGradient(
                  colors: [
                      Colors.orange,
                      Colors.yellowAccent[700],
                    ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  tileMode: TileMode.clamp)
              : LinearGradient(
                  colors: [
                      Colors.white,
                      Colors.white,
                    ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  tileMode: TileMode.clamp),
        ),
        height: 90,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "RM " + ringgit,
                      style: TextStyle(
                          color: _onTap == enter ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    Text(
                      point + " Points",
                      style: TextStyle(
                          color: _onTap == enter ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
