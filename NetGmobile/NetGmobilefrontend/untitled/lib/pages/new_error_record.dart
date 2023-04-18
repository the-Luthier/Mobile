Container(
    width: 430,
    height: 932,
    color: Colors.white,
    padding: const EdgeInsets.only(right: 20, bottom: 209, ),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container(
                width: 344,
                height: 344,
                child: FlutterLogo(size: 344),
            ),
            SizedBox(height: 1224.79),
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
            SizedBox(height: 1224.79),
            Text(
                "Yeni Arıza Kaydı",
                style: TextStyle(
                    color: Color(0xff6d256b),
                    fontSize: 32,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                ),
            ),
            SizedBox(height: 1224.79),
            Container(
                width: 231,
                height: 18,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.20, ),
                ),
            ),
            SizedBox(height: 1224.79),
            Text(
                "Sn. ",
                style: TextStyle(
                    color: Color(0xff1d1b52),
                    fontSize: 12,
                ),
            ),
            SizedBox(height: 1224.79),
            Container(
                width: 390.01,
                height: 1,
            ),
            SizedBox(height: 1224.79),
            Container(
                width: 368,
                height: 318,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 366,
                            height: 38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(color: Color(0xff807f7f), width: 1, ),
                                color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Text(
                                        "Bir arıza tipi seçiniz",
                                        style: TextStyle(
                                            color: Color(0xff929292),
                                            fontSize: 15,
                                        ),
                                    ),
                                    SizedBox(width: 186),
                                    Opacity(
                                        opacity: 0.50,
                                        child: Container(
                                            width: 23,
                                            height: 9,
                                            child: FlutterLogo(size: 9),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 1224.79),
            Container(
                width: 362,
                height: 385,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: Color(0x7f000000), width: 0.50, ),
                    color: Colors.white,
                ),
                padding: const EdgeInsets.only(left: 12, right: 273, top: 10, bottom: 357, ),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                        Opacity(
                            opacity: 0.50,
                            child: Text(
                                "Açıklama...",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                ),
                            ),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 1224.79),
            Container(
                width: 174,
                height: 46,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 174,
                            height: 46,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(43),
                                color: Color(0xffc02465),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 14, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Text(
                                        "Oluştur",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500,
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        ],
    ),
)