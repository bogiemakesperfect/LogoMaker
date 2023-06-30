import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vortex/Pages/ProfilePage/ProfilePageView.dart';
import 'package:vortex/Pages/Setting/SettingView.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0D0D0D),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Container(
            margin: EdgeInsets.only(top: 8.w, left: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => ProfilePageView());
                          },
                          overlayColor: MaterialStateProperty.all(
                            Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          child: SvgPicture.asset(
                            'assets/logomaker.svg',
                            height: 18.w,
                            width: 18.w,
                            color: Color.fromARGB(255, 204, 92, 0),
                          ),
                        ),
                        Text(
                          'Logo Maker',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 5.w,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SettingView());
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 4.w),
                        width: 14.w,
                        height: 14.w,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 46, 43, 43),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 8.w,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 7.w,
                ),
                Row(
                  children: [
                    Container(
                      width: 20.w,
                      height: 20.w,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 204, 92, 0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "All",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 5.w,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 90.w,
                        height: 20.w,
                        decoration: BoxDecoration(
                          //color: Color.fromARGB(255, 46, 43, 43),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Container(
                                width: 37.w,
                                height: 20.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFF0D0D0D),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Color.fromARGB(255, 46, 43, 43),
                                    width: 2,
                                  ),
                                ),
                                child: Center(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.folder,
                                      color: Color.fromARGB(255, 204, 92, 0),
                                      size: 8.w,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text(
                                      "Text",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 5.w,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8.w,
                ),
                Text("Örnekler",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 5.w,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                SizedBox(
                  height: 6.w,
                ),
                Container(
                  width: 100.w,
                  height: 55.w,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 32, 32, 31),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(right: 8.w),
                        padding: EdgeInsets.all(2.w),
                        width: 55.w,
                        height: 55.w,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/logosample.png",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 25.w,
                                height: 10.w,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 46, 43, 43),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Color.fromARGB(255, 204, 92, 0),
                                    width: 2,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "Kullan",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 4.w,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 8.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Pro Örnekler",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 5.w,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text(
                        "Tümünü Gör",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color.fromARGB(255, 204, 92, 0),
                            fontSize: 3.w,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.w,
                ),
                Container(
                  width: 100.w,
                  height: 55.w,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 255, 15, 183),
                            width: 3,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFFCC2B5E),
                              Color(0xFF753A88),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(right: 8.w),
                        padding: EdgeInsets.all(2.w),
                        width: 55.w,
                        height: 55.w,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/logosampletwo.png",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 25.w,
                                height: 10.w,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 46, 43, 43),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Color.fromARGB(255, 204, 92, 0),
                                    width: 2,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "Kullan",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 4.w,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
