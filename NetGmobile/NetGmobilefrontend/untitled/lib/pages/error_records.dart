Container(
    width: 430,
    height: 932,
    color: Colors.white,
    padding: const EdgeInsets.only(left: 20, bottom: 80, ),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[

            SizedBox(height: 87.72),
            Text(
                "Arıza Kayıtlarım",
                style: TextStyle(
                    color: Color(0xff6d256b),
                    fontSize: 32,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                ),
            ),
            SizedBox(height: 87.72),
            Container(
                width: 39,
                height: 34.67,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 39,
                            height: 34.67,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all(color: Color(0x7f000000), width: 1, ),
                                boxShadow: [
                                    BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 2),
                                    ),
                                ],
                                color: Colors.white,
                            ),
                            padding: const EdgeInsets.only(left: 11, right: 12, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Container(
                                        width: 15.75,
                                        height: 12.65,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: FlutterLogo(size: 12.651291847229004),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 87.72),
            Container(
                width: 231,
                height: 18,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.20, ),
                ),
            ),
            SizedBox(height: 87.72),
            Text(
                "Sn. ",
                style: TextStyle(
                    color: Color(0xff1d1b52),
                    fontSize: 12,
                ),
            ),
            SizedBox(height: 87.72),
            Container(
                width: 390.01,
                height: 1,
            ),
            SizedBox(height: 87.72),
            Container(
                width: 339,
                height: 649,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0x7f000000), width: 1, ),
                ),
                child: Stack(
                    children:[
                        Container(
                            width: 339,
                            height: 649,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 1, ),
                                color: Colors.white,
                            ),
                            child: Stack(
                                children:[
                                    Positioned(
                                        left: 311,
                                        top: 23,
                                        child: Container(
                                            width: 5,
                                            height: 601,
                                            color: Color(0xffd9d9d9),
                                        ),
                                    ),
                                    Positioned(
                                        left: 304,
                                        top: 23,
                                        child: Container(
                                            width: 19,
                                            height: 93,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(6),
                                                color: Color(0xffc02465),
                                            ),
                                        ),
                                    ),
                                    Positioned.fill(
                                        child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                width: 337,
                                                height: 23,
                                                color: Colors.white,
                                            ),
                                        ),
                                    ),
                                    Positioned.fill(
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                width: 337,
                                                height: 23,
                                                color: Colors.white,
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                        Positioned(
                            left: 19,
                            top: 23,
                            child: Container(
                                width: 272,
                                height: 892,
                                color: Color(0xffd9d9d9),
                            ),
                        ),
                    ],
                ),
            ),
        ],
    ),
)