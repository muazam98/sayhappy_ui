import 'package:flutter/material.dart';
import 'package:sayhappi/pages/details_food.dart';

class VoucherPage extends StatefulWidget {
  VoucherPage({Key key}) : super(key: key);

  @override
  _VoucherPageState createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Voucher",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: ListView(
        // physics: NeverScrollableScrollPhysics(),
        children: [
          // BuildPoints(
          //   colors: [Colors.orangeAccent, Colors.yellow],
          //   titleText: 'My Points',
          //   subText: '',
          //   percent: '100',
          // ),
          BuildVoucher(
            colors: [Colors.greenAccent, Colors.green[700]],
            titleText: 'SayHappiCode1',
            subText: 'Valid untill 20th August 2018',
            percent: '100 point',
          ),
          BuildVoucher(
            colors: [Colors.purpleAccent, Colors.purple[700]],
            titleText: 'SayHappiCode2',
            subText: 'Valid untill 20th August 2018',
            percent: '100 point',
          ),
          BuildVoucher(
            colors: [Colors.orange, Colors.yellowAccent[700]],
            titleText: 'SayHappiCode3',
            subText: 'Valid untill 20th August 2018',
            percent: '100 point',
          ),
          // BuildVoucher(
          //   colors: [Colors.purpleAccent, Colors.purple[700]],
          //   titleText: 'Applies to First Purchase',
          //   subText: 'Valid untill 20th August 2018',
          //   percent: '- 60%',
          // ),
        ],
      ),
    );
  }
}

class BuildPoints extends StatelessWidget {
  final List<Color> colors;
  final String titleText;
  final String subText;
  final String percent;

  BuildPoints({this.colors, this.titleText, this.subText, this.percent});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(new Radius.circular(10.0)),
          gradient: LinearGradient(
              colors: colors,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              tileMode: TileMode.clamp)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // new Padding(
          //     padding: new EdgeInsets.only(left: 10.0, right: 10.0),
          //     child: new CircleAvatar(
          //       radius: 35.0,
          //       backgroundImage: NetworkImage(
          //           'https://wallpapercave.com/wp/wp2365076.jpg'),
          //     )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  titleText,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  subText,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white70,
                      fontWeight: FontWeight.w400),
                ),
                // new SizedBox(
                //   height: 10.0,
                // ),
                // new Row(
                //   children: <Widget>[
                //     new Column(
                //       children: <Widget>[
                //         new Text('2342',
                //             style: new TextStyle(
                //                 fontSize: 12.0, color: Colors.white)),
                //         new Text('Popularity',
                //             style: new TextStyle(
                //                 fontSize: 10.0, color: Colors.white)),
                //       ],
                //     ),
                //     new Column(
                //       children: <Widget>[
                //         new Text('2342',
                //             style: new TextStyle(
                //                 fontSize: 12.0, color: Colors.white)),
                //         new Text('Like',
                //             style: new TextStyle(
                //                 fontSize: 10.0, color: Colors.white)),
                //       ],
                //     ),
                //     new Column(
                //       children: <Widget>[
                //         new Text('2342',
                //             style: new TextStyle(
                //                 fontSize: 12.0, color: Colors.white)),
                //         new Text('Followed',
                //             style: new TextStyle(
                //                 fontSize: 10.0, color: Colors.white)),
                //       ],
                //     )
                //   ],
                // )
              ],
            ),
          )),
          Padding(
              padding: EdgeInsets.only(left: 10.0, right: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    percent,
                    style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold),
                  ),
                  // new Text(
                  //   'Discount',
                  //   style: new TextStyle(
                  //       fontSize: 14.0, color: Colors.white70),
                  // ),
                ],
              ))
        ],
      ),
    );
  }
}

class BuildVoucher extends StatelessWidget {
  final List<Color> colors;
  final String titleText;
  final String subText;
  final String percent;

  BuildVoucher({this.colors, this.titleText, this.subText, this.percent});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => DetailsFood(),
        ),
      ),
      child: Container(
        height: 150.0,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(new Radius.circular(10.0)),
            gradient: LinearGradient(
                colors: colors,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                tileMode: TileMode.clamp)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // new Padding(
            //     padding: new EdgeInsets.only(left: 10.0, right: 10.0),
            //     child: new CircleAvatar(
            //       radius: 35.0,
            //       backgroundImage: NetworkImage(
            //           'https://wallpapercave.com/wp/wp2365076.jpg'),
            //     )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    titleText,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    subText,
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white70,
                        fontWeight: FontWeight.w400),
                  ),
                  // new SizedBox(
                  //   height: 10.0,
                  // ),
                  // new Row(
                  //   children: <Widget>[
                  //     new Column(
                  //       children: <Widget>[
                  //         new Text('2342',
                  //             style: new TextStyle(
                  //                 fontSize: 12.0, color: Colors.white)),
                  //         new Text('Popularity',
                  //             style: new TextStyle(
                  //                 fontSize: 10.0, color: Colors.white)),
                  //       ],
                  //     ),
                  //     new Column(
                  //       children: <Widget>[
                  //         new Text('2342',
                  //             style: new TextStyle(
                  //                 fontSize: 12.0, color: Colors.white)),
                  //         new Text('Like',
                  //             style: new TextStyle(
                  //                 fontSize: 10.0, color: Colors.white)),
                  //       ],
                  //     ),
                  //     new Column(
                  //       children: <Widget>[
                  //         new Text('2342',
                  //             style: new TextStyle(
                  //                 fontSize: 12.0, color: Colors.white)),
                  //         new Text('Followed',
                  //             style: new TextStyle(
                  //                 fontSize: 10.0, color: Colors.white)),
                  //       ],
                  //     )
                  //   ],
                  // )
                ],
              ),
            )),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    percent,
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  // new Text(
                  //   'Discount',
                  //   style: new TextStyle(
                  //       fontSize: 14.0, color: Colors.white70),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
