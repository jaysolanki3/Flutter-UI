import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import 'navigations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var myindex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Navigation.drawer,
      appBar: Navigation.appBar,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 24.sp,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.lightBlue,
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
        currentIndex: myindex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Learn'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Hub'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: 'Chat'),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/men.jpg')),
              label: 'Profile')
        ],
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 2.w),
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, Priya!",
                          style: TextStyle(
                              fontFamily: 'Open Sans', fontSize: 24.sp),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          "What do you wanna learn today?",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16.sp,
                              color: Colors.grey[500]),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.lightBlue,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            side: const BorderSide(color: Colors.lightBlue),
                            fixedSize: Size(45.w, 8.h),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.book),
                          label: Text(
                            'Programs',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.lightBlue,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            side: const BorderSide(color: Colors.lightBlue),
                            fixedSize: Size(45.w, 8.h),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.menu_book),
                          label: Text(
                            'Learn',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 1.h,
                    ),
                    Column(
                      children: <Widget>[
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            foregroundColor: Colors.lightBlue,
                            side: const BorderSide(color: Colors.lightBlue),
                            fixedSize: Size(45.w, 8.h),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.help),
                          label: Text(
                            'Get Help',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            foregroundColor: Colors.lightBlue,
                            side: const BorderSide(color: Colors.lightBlue),
                            fixedSize: Size(45.w, 8.h),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.equalizer),
                          label: Text(
                            'DD Tracker',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 4.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Programs for You",
                            style: TextStyle(
                                fontFamily: 'Open Sans', fontSize: 20.sp),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  'View all',
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontFamily: 'Open Sans'),
                                ),
                                Icon(Icons.arrow_forward,
                                    color: Colors.grey[500])
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 45.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 80.h,
                              width: 70.w,
                              child: Card(
                                elevation: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          'assets/images/mother.jpg',
                                          fit: BoxFit.cover,
                                          height: 20.h,
                                          width: double.infinity,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Text(
                                        'LIFESTYLE',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Text(
                                        'Complete guide for new born baby',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Text(
                                        '16 lessons',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Events and experiences",
                            style: TextStyle(
                                fontFamily: 'Open Sans', fontSize: 20.sp),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  'View all',
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontFamily: 'Open Sans'),
                                ),
                                Icon(Icons.arrow_forward,
                                    color: Colors.grey[500])
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 46.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 80.h,
                              width: 70.w,
                              child: Card(
                                elevation: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          'assets/images/exercise.jpeg',
                                          fit: BoxFit.cover,
                                          height: 20.h,
                                          width: double.infinity,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Text(
                                        'BABYCARE',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Text(
                                        'Understanding of human behaviour',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '13 Feb, Sunday',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                          OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              foregroundColor: Colors.lightBlue,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  100))),
                                              side: const BorderSide(
                                                  color: Colors.lightBlue),
                                              fixedSize: Size(20.w, 4.h),
                                            ),
                                            onPressed: () {},
                                            child: Text('Book'),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Events and experiences",
                            style: TextStyle(
                                fontFamily: 'Open Sans', fontSize: 20.sp),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  'View all',
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontFamily: 'Open Sans'),
                                ),
                                Icon(Icons.arrow_forward,
                                    color: Colors.grey[500])
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 46.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 80.h,
                              width: 70.w,
                              child: Card(
                                elevation: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          'assets/images/exercise.jpeg',
                                          fit: BoxFit.cover,
                                          height: 20.h,
                                          width: double.infinity,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Text(
                                        'BABYCARE',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Text(
                                        'Understanding of human behaviour',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '13 Feb, Sunday',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                          OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              foregroundColor: Colors.lightBlue,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  100))),
                                              side: const BorderSide(
                                                  color: Colors.lightBlue),
                                              fixedSize: Size(20.w, 4.h),
                                            ),
                                            onPressed: () {},
                                            child: Text('Book'),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
