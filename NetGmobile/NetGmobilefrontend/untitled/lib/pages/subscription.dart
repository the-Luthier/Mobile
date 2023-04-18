Container(
    width: 430,
    height: 932,
    color: Colors.white,
    padding: const EdgeInsets.only(top: 50, bottom: 257, ),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
            Text(
                "Aboneliklerim",
                style: TextStyle(
                    color: Color(0xff6d256b),
                    fontSize: 32,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                ),
            ),
            SizedBox(height: 33.72),
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
                                border: Border.all(color: Color(0xffc02465), width: 0.50, ),
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
            SizedBox(height: 33.72),
            Container(
                width: 231,
                height: 18,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.20, ),
                ),
            ),
            SizedBox(height: 33.72),
            Text(
                "Sn. ",
                style: TextStyle(
                    color: Color(0xff1d1b52),
                    fontSize: 12,
                ),
            ),
            SizedBox(height: 33.72),
            Container(
                width: 390.01,
                height: 1,
            ),
            SizedBox(height: 33.72),
            Text(
                "Abone Numarası",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                ),
            ),
            SizedBox(height: 33.72),
            Text(
                "Abone Numarası",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                ),
            ),
            SizedBox(height: 33.72),
            Container(
                width: 390.01,
                height: 1,
            ),
            SizedBox(height: 33.72),
            Text(
                "Abone Numarası",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                ),
            ),
            SizedBox(height: 33.72),
            Container(
                width: 390.01,
                height: 1,
            ),
            SizedBox(height: 33.72),
            Text(
                "Abone Numarası",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                ),
            ),
            SizedBox(height: 33.72),
            Container(
                width: 390.01,
                height: 1,
            ),
            SizedBox(height: 33.72),
            Text(
                "Abone Numarası",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                ),
            ),
            SizedBox(height: 33.72),
            Container(
                width: 390.01,
                height: 1,
            ),
        ],
    ),
)