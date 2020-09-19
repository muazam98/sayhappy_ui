import 'package:flutter/material.dart';
import 'package:sayhappi/utils/responsive.dart';

class ReferralPage extends StatefulWidget {
  ReferralPage({Key key}) : super(key: key);

  @override
  _ReferralPageState createState() => _ReferralPageState();
}

class _ReferralPageState extends State<ReferralPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   elevation: 0.0,
      //   backgroundColor: Colors.transparent,
      //   title: Text(
      //     "Referral Rewards",
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   centerTitle: false,
      // ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        width: double.infinity,
        height: responsive.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Image(
              width: 90,
              image: AssetImage(
                "assets/images/referral.png",
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Refer to get RM10",
              style: TextStyle(fontSize: 19),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Share your referral code to get RM10 once your friends topup wallet,and they\nwill get RM10 too! ",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              width: double.infinity,
              height: responsive.dp(6),
              child: new Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "SayhappiReferral",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    FlatButton(
                      child: Text(
                        "SHARE",
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: responsive.dp(1.8)),
                      ),
                      onPressed: () {
                        print("share");
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              "Your referrals",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 13,
            ),
            Image(
              width: 200,
              image: AssetImage(
                "assets/images/qrcodesayhappi.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
