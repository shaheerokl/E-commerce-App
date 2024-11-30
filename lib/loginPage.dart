import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/home.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> with TickerProviderStateMixin {
  late TabController _tabController;
  bool value = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 150.h,
          backgroundColor: Color(0xff0DA54B),
        ),
        body: Column(
          children: [
            TabBar(
                controller: _tabController,
                dividerColor: Colors.grey,
                indicatorColor: Color(0xff0DA54B),
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3.0.sp,
                labelColor: Color(0xff0DA54B),
                tabs: [
                  Tab(
                    text: "Login",
                  ),
                  Tab(
                    text: "Register",
                  ),
                ]),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Sign",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text("Welcome back! Don’t have an account?"),
                      Text(
                        "SignUp",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade400,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400)),
                            hintText: "UserName",
                            hintStyle: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade400)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade400,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400)),
                            suffixIcon: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.green,
                            ),
                            hintText: "UserName",
                            hintStyle: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade400)),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff0DA54B),
                              minimumSize: Size(double.infinity, 40.h),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.r)))),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
                          },
                          child: Text("Login",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white))),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                    value: value,
                                    checkColor: Colors.green,
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                        value = newValue!;
                                      });
                                    }),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text("Remember Me",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ],
                            ),
                          ),
                          Text("Forgot Password?",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff0DA54B))),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 149.w,
                            child: Divider(),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.w, right: 5.w),
                            child: Text('OR',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff0DA54B))),
                          ),
                          SizedBox(
                            width: 149.w,
                            child: Divider(),
                          )
                        ],
                      ),
                      SizedBox(height: 20.h,),
                      Container(
                        height: 40.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black12,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/google logo.png",scale: 4.sp,),
                            SizedBox(width: 5.h,),
                            Text("Log In With Google",style: TextStyle(fontSize: 14.sp),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      Container(
                        height: 40.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black12,
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.r))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/apple logo.png",scale: 4.sp,),
                            SizedBox(width: 5.h,),
                            Text("Log In With Apple",style: TextStyle(fontSize: 14.sp),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Register",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 14.sp),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text("Create an Account?",style: TextStyle(

                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp)),

                        SizedBox(
                          height: 20.h,
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade400,
                                  ),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                                  borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                              hintText: "FirstName",
                              hintStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade400)),
                        ),
                        SizedBox(height: 10.h,),
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade400,
                                  ),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                                  borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                              hintText: "LastName",
                              hintStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade400)),
                        ),
                        SizedBox(height: 10.h,),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade400,
                                  ),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                                  borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                              suffixIcon: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.green,
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade400)),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade400,
                                  ),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                                  borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                              suffixIcon: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.green,
                              ),
                              hintText: "ConformPassword",
                              hintStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade400)),
                        ),
                        SizedBox(height: 10.h,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff0DA54B),
                                minimumSize: Size(double.infinity, 40.h),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)))),
                            onPressed: () {},
                            child: Text("Create Account",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white))),
                        SizedBox(
                          height: 10.h,
                        ),

                        Row(
                          children: [
                            SizedBox(
                              width: 149.w,
                              child: Divider(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.w, right: 5.w),
                              child: Text('OR',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff0DA54B))),
                            ),
                            SizedBox(
                              width: 149.w,
                              child: Divider(),
                            )
                          ],
                        ),
                        SizedBox(height: 20.h,),
                        Container(
                          height: 40.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black12,
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/google logo.png",scale: 4.sp,),
                              SizedBox(width: 5.h,),
                              Text("Sign In With Google",style: TextStyle(fontSize: 14.sp),)
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          height: 40.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black12,
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/apple logo.png",scale: 4.sp,),
                              SizedBox(width: 5.h,),
                              Text("Sign In With Apple",style: TextStyle(fontSize: 14.sp),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            )
          ],
        ));
  }
}
