// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyModemPage extends StatelessWidget {
  const MyModemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modem'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 430,
            height: 932,
            color: Colors.white,
            padding: const EdgeInsets.only(
              top: 55,
            ),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Modem",
                    style: TextStyle(
                      color: Color(0xff6d256b),
                      fontSize: 32,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 0.58),
                  SizedBox(
                    width: 39,
                    height: 34.67,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 39,
                          height: 34.67,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            border: Border.all(
                              color: const Color(0x7f000000),
                              width: 1,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.only(
                            left: 11,
                            right: 12,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 15.75,
                                height: 12.65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child:
                                    const FlutterLogo(size: 12.651291847229004),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 0.58),
                  Container(
                    width: 231,
                    height: 18,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 0.20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 0.58),
                  const Text(
                    "Sn. ",
                    style: TextStyle(
                      color: Color(0xff1d1b52),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 0.58),
                  SizedBox(
                    width: 430,
                    height: 933,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Stack(
                            children: [
                              Positioned(
                                left: 46,
                                top: 410,
                                child: Container(
                                  width: 337,
                                  height: 59,
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                              Positioned(
                                left: 46,
                                top: 527,
                                child: Container(
                                  width: 338,
                                  height: 58,
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                              Positioned(
                                left: 46,
                                top: 469,
                                child: Container(
                                  width: 338,
                                  height: 58,
                                  color: Colors.white,
                                ),
                              ),
                              Positioned(
                                left: 46,
                                top: 583,
                                child: Container(
                                  width: 338,
                                  height: 58,
                                  color: Colors.white,
                                ),
                              ),
                              const Positioned(
                                left: 19,
                                top: 0,
                                child: SizedBox(
                                  width: 390.01,
                                  height: 1,
                                ),
                              ),
                              Positioned(
                                left: 41,
                                top: 26,
                                child: Container(
                                  width: 347,
                                  height: 335,
                                  padding: const EdgeInsets.only(
                                    top: 17,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: 346.27,
                                        height: 317.73,
                                        child: Stack(
                                          children: [
                                            Positioned.fill(
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  width: 330.63,
                                                  height: 305.88,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 48,
                                                    right: 125,
                                                    top: 26,
                                                    bottom: 165,
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Positioned.fill(
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: 158.04,
                                                              height: 115.24,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                              child: const FlutterLogo(
                                                                  size:
                                                                      115.23854064941406),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const Positioned.fill(
                                                        child: FlutterLogo(
                                                            size:
                                                                305.884521484375),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned.fill(
                                              child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  width: 113.23,
                                                  height: 114.49,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: const FlutterLogo(
                                                      size: 113.22999572753906),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 98.17,
                                              top: 149.83,
                                              child: Container(
                                                width: 238.01,
                                                height: 167.89,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                padding: const EdgeInsets.only(
                                                  left: 82,
                                                  right: 76,
                                                  top: 14,
                                                  bottom: 9,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Positioned.fill(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: 79.78,
                                                            height: 144.30,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: const FlutterLogo(
                                                                size:
                                                                    79.78414916992188),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const Positioned.fill(
                                                      child: FlutterLogo(
                                                          size:
                                                              167.89036560058594),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 53,
                                top: 423,
                                child: SizedBox(
                                  width: 323,
                                  height: 202,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      SizedBox(
                                        width: 323,
                                        height: 32.20,
                                        child: Text(
                                          "Fiber paket aboneliklerinde modem hizmetinden faydalanabilirsiniz.",
                                          style: TextStyle(
                                            color: Color(0xff1d1b52),
                                            fontSize: 15,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 25.09),
                                      SizedBox(
                                        width: 277,
                                        height: 35.13,
                                        child: Text(
                                          "Fiber paket kulllanıcıları, modem \n      hizmetinden ücretsiz faydalanabilir.",
                                          style: TextStyle(
                                            color: Color(0xff1d1b52),
                                            fontSize: 15,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 25.09),
                                      SizedBox(
                                        width: 306,
                                        height: 24.40,
                                        child: Text(
                                          "Abonelik süresi boyunca kullanıma uygundur.",
                                          style: TextStyle(
                                            color: Color(0xff1d1b52),
                                            fontSize: 15,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 25.09),
                                      SizedBox(
                                        width: 314,
                                        height: 35,
                                        child: Text(
                                          "Abonelik iptali durumunda cihazınızı \n      15 gün içinde iade edebilirsiniz.",
                                          style: TextStyle(
                                            color: Color(0xff1d1b52),
                                            fontSize: 15,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Positioned.fill(
                          child: FlutterLogo(size: 430),
                        ),
                      ],
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
