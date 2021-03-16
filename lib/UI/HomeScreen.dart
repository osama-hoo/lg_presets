import 'package:flutter/material.dart';
import 'package:lr_presets/Constants/Colors.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool tab1 = true;
  bool tab2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAccentColor,
      appBar: AppBar(
        title: Text('Presets',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0.sp,
                color: kAccentColor)),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: 78.5.h,
        width: 100.0.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 4.6.h,
              margin: EdgeInsets.only(left: 25, right: 25, top: 18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12),
              child: Stack(
                children: <Widget>[
                  TextField(
                    maxLengthEnforced: true,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 19, right: 50, bottom: 8),
                      border: InputBorder.none,
                      hintText: 'Search book..',
                    ),
                  ),
                ],
              ),
            ),
            DefaultTabController(
              length: 3,
              child: TabBar(
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.amber,
                  tabs: [
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('New'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('Trending'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('Best Seller'),
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        //color: Colors.amber,
        height: 14.0.h,
        child: Center(
          child: DefaultTabController(
            length: 2,
            child: TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.amber,
                tabs: [
                  Tab(
                    child: Container(
                      margin: EdgeInsets.only(right: 200),
                      child: Text('New'),
                    ),
                  ),
                  Tab(
                    child: Container(
                      margin: EdgeInsets.only(right: 23),
                      child: Text('Trending'),
                    ),
                  ),


                ]),
          ),
        ),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     InkWell(
        //       onTap: () {
        //         setState(() {
        //           tab1 = true;
        //           if (tab1 == true) {
        //             tab2 = false;
        //           }
        //         });
        //       },
        //       child: Text("Premium",
        //           style: TextStyle(
        //               fontWeight: FontWeight.bold,
        //               fontSize: 15.0.sp,
        //               color: tab1 ? kTextSelectedColor : kTextUnselectedColor)),
        //     ),
        //     InkWell(
        //       onTap: () {
        //         setState(() {
        //           tab2 = true;
        //           if (tab2 == true) {
        //             print("tab1");
        //             tab1 = false;
        //           }
        //         });
        //       },
        //       child: Text("Inspired",
        //           style: TextStyle(
        //               fontWeight: FontWeight.bold,
        //               fontSize: 15.0.sp,
        //               color: tab2 ? kTextSelectedColor : kTextUnselectedColor)),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
