import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class StackOver extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<StackOver>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        top: true,
              child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Stack(
              children: [
                ClipPath(
                  clipper: OvalBottomBorderClipper(),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                 top: 50.h,
                 left: 100.h,
                  child: CircleAvatar(
                    maxRadius: 90,
                    backgroundColor: Colors.deepOrangeAccent,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),

            Container(
              child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                tabs: [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Administration',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Utilisateur',
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  Container(
                      color: Colors.deepOrange,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                padding: EdgeInsets.all(4),
                                height: 50.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      icon: CircleAvatar(
                                        backgroundColor: Colors.deepOrangeAccent,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                padding: EdgeInsets.all(4),
                                height: 50.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      icon: CircleAvatar(
                                        backgroundColor: Colors.deepOrangeAccent,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 60.h,
                              width: 150.w,
                              child: Text(
                                "Connexion",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50),
                                  border:
                                      Border.all(width: 1, color: Colors.white)),
                            )
                          ],
                        ),
                      )),

                  // second tab bar view widget
                  Container(
                      color: Colors.deepOrange,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50.h,
                            ),
                            Padding(
                              padding: EdgeInsets.all(ScreenUtil().setWidth(8.0)),
                              child: Container(
                                padding: EdgeInsets.all(4),
                                height: 50.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      icon: CircleAvatar(
                                        backgroundColor: Colors.deepOrangeAccent,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.all(ScreenUtil().setWidth(8.0)),
                              child: Container(
                                padding: EdgeInsets.all(4),
                                height: 50.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      icon: CircleAvatar(
                                        backgroundColor: Colors.deepOrangeAccent,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.all(ScreenUtil().setWidth(8.0)),
                              child: Container(
                                padding: EdgeInsets.all(4),
                                height: 50.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      icon: CircleAvatar(
                                        backgroundColor: Colors.deepOrangeAccent,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 60.h,
                              width: 150.w,
                              child: Text(
                                "Connexion",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50),
                                  border:
                                      Border.all(width: 1, color: Colors.white)),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class OvalBottomBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 13);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(
        size.width - size.width / 4, size.height, size.width, size.height - 13);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}