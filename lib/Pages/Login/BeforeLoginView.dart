import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vortex/Pages/HomePage/HomeView.dart';

class BeforeLogin extends StatelessWidget {
  const BeforeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0D0D0D),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(5.w),
                color: Colors.green.withOpacity(0),
                width: 100.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Kolayca ",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color.fromARGB(
                                  255, 204, 92, 0), //Color(0xFFFC7C15),
                              fontSize: 43,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "logo",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "yap ",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "ve",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "özgürce ",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Kullan",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color.fromARGB(255, 204, 92, 0),
                              fontSize: 43,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => HomeView(), transition: Transition.rightToLeft);
                },
                child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 204, 92, 0),
                          Color.fromARGB(255, 204, 92, 0),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 80.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "Hemen Başla",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 22.w,
                          height: 22.w,
                          margin: EdgeInsets.only(right: 1.w),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 14, 13, 13),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Color.fromARGB(255, 194, 88, 2),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: 100.w,
                color: Colors.red.withOpacity(0),
                child: Lottie.network(
                  "https://assets10.lottiefiles.com/packages/lf20_dIiK0dtizW.json",
                ),
              ),
            )
          ],
        ));
  }
}
