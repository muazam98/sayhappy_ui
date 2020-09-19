import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayhappi/utils/restaurants.dart';
import 'package:sayhappi/widgets/search_card.dart';
import 'package:sayhappi/widgets/trending_item.dart';

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Trending Restaurants",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10.0),
                SearchCard(),
                SizedBox(height: 10.0),
                ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: restaurants == null ? 0 : restaurants.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map restaurant = restaurants[index];

                    return TrendingItem(
                      img: restaurant["img"],
                      title: restaurant["title"],
                      address: restaurant["address"],
                      rating: restaurant["rating"],
                    );
                  },
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
