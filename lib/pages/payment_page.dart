import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentMainPage extends StatefulWidget {
  @override
  _PaymentMainPageState createState() => _PaymentMainPageState();
}

class _PaymentMainPageState extends State<PaymentMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 12,
              child: Container(
                child: ListView(
                  children: [
                    Container(
                      height: 260,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 4),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      height: 80,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                        child: Image.asset(
                                          "assets/images/food1.jpeg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 9,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Happy Jones",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "6 Pack",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Spacer(),
                                          Text.rich(TextSpan(children: [
                                            TextSpan(
                                                text: "Point ",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                )),
                                            TextSpan(
                                                text: "950",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ]))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              child: Center(
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "2",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              child: Center(
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Text.rich(TextSpan(children: [
                                          TextSpan(
                                              text: "Point ",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                              text: "1900",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold))
                                        ]))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 4),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      height: 80,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                        child: Image.asset(
                                          "assets/images/food4.jpeg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 9,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Uncle Boons",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "6 Pack",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Spacer(),
                                          Text.rich(TextSpan(children: [
                                            TextSpan(
                                                text: "Point ",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                )),
                                            TextSpan(
                                                text: "950",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ]))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              child: Center(
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "2",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              child: Center(
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Text.rich(TextSpan(children: [
                                          TextSpan(
                                              text: "Point ",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                              text: "1900",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold))
                                        ]))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 4),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      height: 80,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                        child: Image.asset(
                                          "assets/images/food7.jpeg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 9,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Pizza",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Single",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Spacer(),
                                          Text.rich(TextSpan(children: [
                                            TextSpan(
                                                text: "Point ",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                )),
                                            TextSpan(
                                                text: "173",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ]))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              child: Center(
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "1",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              child: Center(
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Text.rich(TextSpan(children: [
                                          TextSpan(
                                              text: "Point ",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                              text: "173",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold))
                                        ]))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 64,
                      margin: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(16)),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Icon(
                            Icons.local_play,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Apply a promo code",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Text(
                            "Apply",
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 160,
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Point total",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                "Point ",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "2306",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Delivery charges",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                "Point ",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "200",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          // Row(
                          //   children: [
                          //     Text(
                          //       "Donate RM1.00 to needy ",
                          //       style: TextStyle(fontWeight: FontWeight.bold),
                          //     ),
                          //     Text(
                          //       " Remove",
                          //       style: TextStyle(
                          //         fontWeight: FontWeight.bold,
                          //         color: Colors.red,
                          //       ),
                          //     ),
                          //     Spacer(),
                          //     Text(
                          //       "RM",
                          //       style: TextStyle(
                          //           color: Colors.red,
                          //           fontWeight: FontWeight.bold),
                          //     ),
                          //     Text(
                          //       "1.00",
                          //       style: TextStyle(fontWeight: FontWeight.bold),
                          //     )
                          //   ],
                          // ),
                          Row(
                            children: [
                              Text(
                                "To pay",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                "Point ",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "2606",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    // Container(
                    //   padding: EdgeInsets.all(16),
                    //   margin: EdgeInsets.all(16),
                    //   height: 64,
                    //   decoration: BoxDecoration(
                    //       color: Colors.orange[100],
                    //       borderRadius: BorderRadius.circular(16)),
                    //   child: Row(
                    //     children: [
                    //       Icon(
                    //         Icons.card_giftcard,
                    //         color: Colors.red,
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(horizontal: 16),
                    //         child: Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Text("Pay Using"),
                    //             Text(
                    //               "Apple Pay",
                    //               style: TextStyle(
                    //                 fontSize: 14,
                    //                 fontWeight: FontWeight.bold,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //       Spacer(),
                    //       Center(
                    //         child: Text(
                    //           "Change",
                    //           style: TextStyle(
                    //               fontWeight: FontWeight.w700,
                    //               fontSize: 13,
                    //               color: Colors.red),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 25,
        child: Container(
          height: 72,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content: Text("Payment"),
                        ));
              },
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                  color: Colors.orange[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "4 ITEMS",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "Point ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red)),
                            TextSpan(
                              text: "2600 ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // TextSpan(
                            //     text: "Incl taxes",
                            //     style: TextStyle(
                            //         fontWeight: FontWeight.w600, fontSize: 12))
                          ]))
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Pay",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.play_arrow)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
