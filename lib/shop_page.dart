import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/home.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "assets/avathar1.png",
      "assets/avathar2.png",
      "assets/avathar3.png",
      "assets/avathar4.png",
    ];
    List<String> names = ["Popular", "Men", "Women", "Kids"];
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 280.w,
                  child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "  Search in here",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 14.sp),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                ),
                Icon(Icons.shopping_cart_outlined)
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shope by Gategory",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff0DA54B)),
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 100.h,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: 10.h,
                        right: 10.w,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1.w, color: Colors.green),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r))),
                        width: 72.w,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            CircleAvatar(
                              radius: 30.r,
                              backgroundImage: AssetImage(image[index]),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(names[index],style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp)),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff0DA54B)),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7.w,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      height: 160.h,
                      width: 130.w,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.r))),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 157.h,
                                width: double.infinity,decoration: BoxDecoration(image: DecorationImage(image: AssetImage( "assets/shirt.png",), fit: BoxFit.contain,)),
                                child: Column(children: [

                                ],)
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0.sp),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 20.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.r))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 13.sp,
                                            color: Color(0xffFDCC0D),
                                          ),
                                          Text("4.9",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp))
                                        ],
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 13.r,
                                      child: Icon(
                                        Icons.favorite_border,
                                        size: 13.sp,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                top: null,
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  width: double.infinity,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(5.r),
                                          bottomRight: Radius.circular(5.r))),
                              child: Column(
                                children: [
                                  SizedBox(height: 5.h,),
                                  Text("Cotton shirt Regular Fit",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp)),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 16.w,right: 16.w,top: 8.0.h),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("RM 100.00",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12.sp),),
                                        CircleAvatar(
                                          radius: 10.r,
                                          backgroundColor: Colors.grey.shade400,
                                          child: Icon(Icons.shopping_bag,size: 13.sp,),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
