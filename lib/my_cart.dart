import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/home.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {

  List<int> values = [1,1,1];

List<bool> value=[false,false,false];
  @override
  Widget build(BuildContext context) {
    List paymentTypes = ["Sub-total", "Voucher", "Delivery Free"];
    List payment = ["RM 2,600", "-RM 100", "RM 20"];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        leading: IconButton.outlined(
            onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
        title: Text("My Carts"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Text(
              "Delete",
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 280.h,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 3,
                // scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
                    child: Material(
                      shadowColor: Colors.grey.shade200,
                      elevation: 5,
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      child: Container(
                        height: 80.h,
                        child: Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5.r)),
                                            child: Image.asset(
                                              "assets/shirt.png",
                                              fit: BoxFit.fill,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text('Cotton shirt Regular Fit '),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text("Size: M"),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text("RM 100"),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(width: 10),
                                  Checkbox(
                                    checkColor: Color(0xff0DA54B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100.r))),
                                    // Example with tristate
                                    value: value[index],
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                    value[index] =!value[index];
                                      });
                                    },
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.r))),
                                    height: 30.h,
                                    width: 70.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 20.h,
                                          width: 20.w,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: 1.w,
                                                  color: Colors.grey),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5.r))),
                                          child: IconButton(alignment: Alignment.center,
                                              onPressed: () {
                                                setState(() {
                                                  values[index] > 1
                                                      ? values[index] = values[index]-1
                                                      : null;
                                                });
                                              },
                                              icon: Icon(
                                                Icons.remove,
                                                size: 10.sp,
                                              )),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Center(
                                            child: Text(
                                          values[index].toString(),
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w700),
                                        )),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Container(
                                          height: 20.h,
                                          width: 20.w,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1.w,
                                                  color: Colors.grey),
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5.r))),
                                          child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  values[index] = values[index]+1;

                                                });
                                              },
                                              icon: Icon(
                                                Icons.add,
                                                size: 10.sp,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
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
            height: 40.h,
            child: Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50.h,
                    width: 200.w,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.red),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          hintText: "Promo Code"),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          minimumSize: Size(120.w, 40.h),
                          backgroundColor: Color(0xff0DA54B)),
                      onPressed: () {},
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 14.sp,
                        ),
                      ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 110.h,
            width: double.infinity,
            child: ListView.builder(
                itemCount: paymentTypes.length,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    leading: Text(
                      paymentTypes[index],
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade400),
                    ),
                    trailing: Text(payment[index],
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                  );
                }),
          ),
          Divider(
            color: Colors.grey.shade400,
            thickness: 1,
            indent: 16.w,
            endIndent: 16.w,
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.black)),
                Text("RM 2,520",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.black))
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.r))),
                  minimumSize: Size(220.w, 40.h),
                  backgroundColor: Color(0xff0DA54B)),
              onPressed: () {},
              child: Text("Checkout RM 2,520",  style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800,
                  color: Colors.white)))
        ],
      ),
    );
  }
}
