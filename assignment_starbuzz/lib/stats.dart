import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stats extends StatelessWidget {

  final List<StaggeredGridTile>  _cardTile = <StaggeredGridTile> [
    StaggeredGridTile.count( crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(),),
    StaggeredGridTile.count( crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(),),
    StaggeredGridTile.count( crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(),),
    StaggeredGridTile.count( crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(),),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          // isExtended: true,
          child: SvgPicture.asset(
            'icons/game.svg',
            height: 30,
            width: 30,
          ),
          backgroundColor: Color(0xffFF5900),
          onPressed: () {
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: SvgPicture.asset(
              'icons/drawer.svg',
              height: 30,
              width: 30,
            ),
            onPressed: () {},
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Container(
                      height: 70,width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xff000000).withOpacity(.1),
                      ),
                      child: const Icon(Icons.notifications_none_outlined,color: Color(0XFF292D32),size: 25,)
                  ),
                  const SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      height: 70,width: 55,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff000000).withOpacity(.1),width: 3),
                        borderRadius: BorderRadius.circular(25),
                      ),
                        child:  Padding(
                          padding: const EdgeInsets.all(.0),
                          child: SvgPicture.asset(
                            'icons/profile.svg',
                            fit: BoxFit.fill,
                          ),
                        ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Color(0xffA3A3CC),
          unselectedIconTheme: IconThemeData(
              color: Color(0xffA3A3CC)
          ),
          selectedItemColor: Color(0xff6161A8),
          selectedIconTheme: IconThemeData(
            color: Color(0xff484884),
          ),
          selectedLabelStyle: TextStyle(
            color: Color(0xff6161A8),
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_sharp),
              label: '',
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width*1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color(0xffECE9FF)
                  ),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                               "Total Received",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff000000).withOpacity(0.2),
                                )
                            ),
                            const SizedBox(height: 10),
                            Text(
                           "25,000",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "+10% since last month",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -150,
                        right: -90,
                        child: CircleAvatar(
                          radius: 103,
                          backgroundColor:  Color(0xffFFFFFF).withOpacity(.4),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right:40,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor:  Color(0xffFFFFFF).withOpacity(.4),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width*1,
                  height: 85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xffC9E8FF)
                  ),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(13),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "Trending Activity 🔥",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: SvgPicture.asset("icons/Group 626893.svg",
                        )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 10.0,

                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: buildGridCard(
                      title: "Completed",
                      color: Color(0xffECE9FF),
                      icon: 'icons/task.svg',
                      lable1: '15 Campaigns',
                      ancColor: Color(0xffFFFFFF).withOpacity(.4),
                    ),),
                    StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 0.6,
                      child: buildGridCard2(
                      title: "Ongoing",
                      color: Color(0xffE5F4FF),
                      icon: 'icons/chart.svg',
                      lable1: '24 Campaigns',
                      ancColor: Color(0xffFFFFFF).withOpacity(.4),
                    ),),

                    StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1,
                      child: buildGridCard(
                      title: "initiated by you",
                      color: Color(0xffFFF1DB),
                      icon: 'icons/profile-add.svg',
                      lable1: '15 Campaigns',
                      ancColor: Color(0xffFFFFFF).withOpacity(.4),
                    ),),
                    StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: .6,
                      child: buildGridCard2(
                      title: "Rejected",
                      color: Color(0xffFBE7E3),
                      icon: 'icons/rejected.svg',
                      lable1: '24 Campaigns',
                      ancColor: Color(0xffFFFFFF).withOpacity(.4),
                    ),),
                  ],

                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildGridCard({
    String? title,
    String? icon,
    String? lable1,
    Color? ancColor,
    Color? color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  icon!,
                  height: 30,
                  width: 30,
                ),

                const SizedBox(height: 50),
                Text(
                    title!,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff000000).withOpacity(0.2),
                    )
                ),
                const SizedBox(height: 15),
                Text(
                  lable1!,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -110,
            right: -90,
            child: CircleAvatar(
              radius: 103,
              backgroundColor: ancColor,
            ),
          ),
          Positioned(
            top: 40,
            right:40,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: ancColor,
            ),
          )
        ],
      ),
    );
  }

  Widget buildGridCard2({
    String? title,
    String? icon,
    String? lable1,
    Color? ancColor,
    Color? color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  icon!,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    FittedBox(
                      fit:BoxFit.fitWidth,
                      child: Text(
                          title!,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000000).withOpacity(0.2),
                          )
                      ),
                    ),
                    const SizedBox(height: 10),
                    FittedBox(
                      fit:BoxFit.fitWidth,
                      child: Text(
                        lable1!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: -140,
            right: -80,
            child: CircleAvatar(
              radius: 103,
              backgroundColor: ancColor,
            ),
          ),
          Positioned(
            top: 30,
            right:40,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: ancColor,
            ),
          )
        ],
      ),
    );
  }
}

