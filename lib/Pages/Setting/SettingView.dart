import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vortex/Pages/ProfilePage/ProfilePageView.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0D0D0D),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Ayarlar",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: true,
          leading: Container(
              margin: EdgeInsets.only(left: 5.w),
              padding: EdgeInsets.only(left: 2.5.w),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 46, 43, 43),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  Get.back();
                },
              )),
          leadingWidth: 80, // default is 56
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5.w, top: 2.h),
                    child: SvgPicture.asset(
                      'assets/logomaker.svg',
                      height: 35.w,
                      width: 35.w,
                      color: Color.fromARGB(255, 204, 92, 0),
                    ),
                  ),
                  Transform(
                    transform: Matrix4.skewX(0.5)..rotateY(3.14 / 12.0),
                    origin: Offset(50.0, 50.0),
                    child: Container(
                      margin: EdgeInsets.only(left: 2.w, top: 3.h),
                      width: 45.w,
                      height: 22.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 204, 92, 0),
                          width: 2,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(96, 44, 42, 42),
                            Color.fromARGB(115, 48, 47, 47),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Shimmer.fromColors(
                            baseColor: Colors.white,
                            highlightColor: Color.fromARGB(255, 204, 92, 0),
                            child: Text(
                              "Pro'ya Geç",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                itemCount: 8,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                      width: 100.w,
                      height: 10.h,
                      margin: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.h),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 46, 43, 43),
                          width: 2,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(96, 44, 42, 42),
                            Color.fromARGB(115, 48, 47, 47),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 4.w, right: 4.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 30,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 2.w),
                              child: Text(
                                "Ayar Adı",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(right: 2.w),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ));
                },
              )
            ],
          ),
        ));
  }
}
