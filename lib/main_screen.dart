import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/home.dart';
import 'package:newproject/loginPage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          children: [
            SizedBox(
              height: 110.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 40.w),
              child: Container(
                  height: 270.h, child: Image.asset("assets/main image.png")),
            ),
            SizedBox(height: 20.h),
            Text(
              "All your shopping in\none App",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 34.sp),
            ),
            SizedBox(height: 10.h),
            Text(
              "Sell your devices the smarter, faster way for \nimmediate cash and a cleaner conscience. Sell \nyour devices the smarter, faster way for \nimmediate cash and a cleaner conscience.",
              style: TextStyle(fontSize: 15.sp),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r))),
                        backgroundColor: Color(0xff0DA54B),
                        minimumSize: Size(160.w, 40.h)),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Loginpage()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      backgroundColor: Colors.white,
                      minimumSize: Size(160.w, 40.h)),
                  onPressed: () {},
                  child: Text("Sign Up",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0DA54B),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
