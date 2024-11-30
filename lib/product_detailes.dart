import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/home.dart';

class ProductDetailes extends StatefulWidget {
  const ProductDetailes({super.key});

  @override
  State<ProductDetailes> createState() => _ProductDetailesState();
}

class _ProductDetailesState extends State<ProductDetailes> {
  int currentIndex = 0;
  int currentIndex1 = 0;
int value=1;
void add(){
  setState(() {
 value=value ++;
  });
}
  void remove(){
    setState(() {
      value=value --;
    });
  }
  @override
  Widget build(BuildContext context) {
    List<String> ProductImages = [
      "assets/shirt.png",
      "assets/shirt1.png",
      "assets/shirt2.png",
      "assets/shirt.png",
    ];
    List<String> productSize = ["S", "M", "L", "XL"];
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300.h,
            width: double.infinity,
            child: Image.asset(
              ProductImages[currentIndex],
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 90.h,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ProductImages.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: 10.h,
                            right: 10.w,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1.w,
                                      color: currentIndex == index
                                          ? Colors.green
                                          : Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.r))),
                              width: 72.w,
                              child: Image.asset(
                                ProductImages[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 20.h,
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 18.sp,
                        color: Color(0xffFDCC0D),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4.9",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Reviews",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Men Cotton shirt Regular Fit",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "RM100.00",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Select Size",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 40.h,
                  width: 250.w,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productSize.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentIndex1 = index;
                                  });

                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: currentIndex1 == index
                                          ? Colors.green
                                          : Colors.transparent,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.r))),
                                  height: 30.h,
                                  width: 30.w,
                                  child: Center(
                                    child: Text(
                                      productSize[index],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      height: 40.h,
                      width: 120.w,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.w, right: 5.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.r))),
                             child: Center(
                               child: IconButton(onPressed: (){
                                 setState(() {
                                   value>1?  value=value-1:null;
                                 });
                               }, icon: Icon(Icons.remove)),
                             ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Center(
                                child: Text(
                              "$value",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w700),
                            )),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.r))),
                          child: IconButton(onPressed: (){

                              setState(() {
                           value=value+1;
                              });

                          }, icon:Icon(Icons.add)),
                          
                            
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.r))),
                            minimumSize: Size(180.w, 40.h),
                            backgroundColor: Color(0xff0DA54B)),
                        onPressed: () {},
                        child: Text("Add to Cart",style: TextStyle(fontSize: 16.sp,color: Colors.white,fontWeight: FontWeight.w700),))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
