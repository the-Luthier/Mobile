Container(
    width: 430,
    height: 932,
    color: Colors.white,
    padding: const EdgeInsets.only(top: 60, bottom: 46, ),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Text(
                "Arıza Bildirimi",
                style: TextStyle(
                    color: Color(0xff6d256b),
                    fontSize: 32,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                ),
            ),
            SizedBox(height: 23.22),
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
            SizedBox(height: 23.22),
            Text(
                "Sn. ",
                style: TextStyle(
                    color: Color(0xff1d1b52),
                    fontSize: 12,
                ),
            ),
            SizedBox(height: 23.22),
            Container(
                width: 390.01,
                height: 1,
            ),
            SizedBox(height: 23.22),
            Container(
                width: 404,
                height: 199,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 404,
                            height: 199,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19),
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
                            padding: const EdgeInsets.only(left: 56, right: 55, top: 80, bottom: 81, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    SizedBox(
                                        width: 293,
                                        height: 38,
                                        child: Text(
                                            "Yeni Arıza Kaydı",
                                            style: TextStyle(
                                                color: Color(0xffc02465),
                                                fontSize: 36,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w500,
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 23.22),
            Container(
                width: 404,
                height: 199,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 404,
                            height: 199,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19),
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
                            padding: const EdgeInsets.only(left: 84, right: 38, top: 72, bottom: 100, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                    SizedBox(
                                        width: 282,
                                        height: 27,
                                        child: Text(
                                            "Belge Arızaları",
                                            style: TextStyle(
                                                color: Color(0xffc02465),
                                                fontSize: 36,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w500,
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 23.22),
            Container(
                width: 404,
                height: 199,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 404,
                            height: 199,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19),
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
                            padding: const EdgeInsets.only(left: 56, right: 66, top: 72, bottom: 100, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                    SizedBox(
                                        width: 282,
                                        height: 27,
                                        child: Text(
                                            "Arıza Kayıtlarım",
                                            style: TextStyle(
                                                color: Color(0xffc02465),
                                                fontSize: 36,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w500,
                                            ),
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