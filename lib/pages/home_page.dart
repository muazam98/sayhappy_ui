import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sayhappi/pages/home_view.dart';
import 'package:sayhappi/pages/profile_page.dart';
import 'package:sayhappi/pages/referral_page.dart';
import 'package:sayhappi/pages/voucher_page.dart';
import 'package:sayhappi/pages/wallet_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int _page = 0;
  bool _isVisible = true;

  List icons = [
    FontAwesomeIcons.home,
    FontAwesomeIcons.envelopeOpenText,
    Icons.add,
    FontAwesomeIcons.gift,
    FontAwesomeIcons.user,
  ];

  List text = [
    'Home',
    'My Points',
    'Add',
    'Referral',
    'Profile',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  buildTabIcon(int index) {
    if (index == 2) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () => print("object"),
            child: Icon(
              icons[index],
              size: 24.0,
              color: Colors.transparent,
            ),
          ),
        ],
      );
    } else {
      return Expanded(
        child: GestureDetector(
          onTap: () => _pageController.jumpToPage(index),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 5,
              ),
              Icon(
                icons[index],
                size: 21.0,
                color: _page == index
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).textTheme.caption.color,
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                text[index],
                style: TextStyle(
                  fontSize: 13.0,
                  color: _page == index
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).textTheme.caption.color,
                ),
                // style: kTitleTextStyle.copyWith(
                //   fontWeight: FontWeight.w500,
                //   fontSize: 13.0,
                //   color: _page == index
                //       ? Theme.of(context).primaryColor
                //       : Theme.of(context).textTheme.caption.color,
                // ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: [
          HomeView(),
          WalletPage(),
          VoucherPage(),
          ReferralPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: _isVisible ? 60 : 0.0,
        child: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 7),
              buildTabIcon(0),
              buildTabIcon(1),
              buildTabIcon(2),
              buildTabIcon(3),
              buildTabIcon(4),
              SizedBox(width: 7),
            ],
          ),
          color: Colors.white,
          shape: CircularNotchedRectangle(),
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return VoucherPage();
              },
            ),
          );
        },
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }
}
