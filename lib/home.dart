import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    List<String>images=["assets/phons1.png","assets/phons2.png","assets/phons3.png"];
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back!",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                        ),
                      ),
                      Text(
                        "Rostam Sadiqi",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                        ),
                      )
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 30.r,
                  backgroundImage: AssetImage(
                    "assets/dp.png",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 160.h,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 16.w, top: 5.h, bottom: 5.h),
                    child: Container(
                      width: 300.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                spreadRadius: 3,
                                color: Colors.grey.shade100)
                          ],
                          borderRadius: BorderRadiusDirectional.all(
                              Radius.circular(10.r))),
                      child: Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 120.h,
                              width: 130.w,
                              child: Column(
                                children: [
                                  Text(
                                    "Trade-in and save",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    "Enjoy Great unfront saving\nEnjoy Great unfront saving",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.greenAccent.shade200,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                          minimumSize: Size(100.w, 40.h)),
                                      onPressed: () {},
                                      child: Text(
                                        "Learn More",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.sp,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              height: 130.h,
                              width: 120.w,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.r)),
                                child: Image.asset(
                                  "assets/phone.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shoking Sail",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16.sp,
                    )),
                Text("View All",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: Color(0xff0DA54B)))
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 160.h,
            width: double.infinity,
            child: ListView.builder(
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Container(
                      width: 140.w,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r)),
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 10.w,
                            child: Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                color: Color(0xff0DA54B),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.r)),
                              ),
                              child: Text(
                                  textAlign: TextAlign.center,
                                  "50% OFF",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10.sp,
                                  )),
                            ),
                          ),
                          Positioned(
                            bottom: 0.h,
                            child: Container(
                              height: 40.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10.r),
                                    bottomLeft: Radius.circular(10.r)),
                              ),
                              child: Padding(
                                padding:  EdgeInsets.only(top: 8.h),
                                child: Text( textAlign: TextAlign.center,"15k Sold Out",  style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp,color: Colors.white
                                )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(height: 15.h,),
          Padding(
            padding:  EdgeInsets.only(left: 16.w,right: 16.h),
            child: Container(height: 150.h,
              child: Image.asset("assets/Promo card (1).png"),
            ),
          )
        ],
      ),

    );
  }
}
