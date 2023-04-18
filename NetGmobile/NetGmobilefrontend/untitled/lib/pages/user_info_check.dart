Container(
    width: 430,
    height: 774,
    color: Colors.white,
    padding: const EdgeInsets.only(right: 11, bottom: 104, ),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
            Transform.rotate(
                angle: -3.14,
                child: Container(
                    width: 39,
                    height: 40.24,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                            Transform.rotate(
                                angle: -3.14,
                                child: Container(
                                    width: 39,
                                    height: 40.24,
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
                                    padding: const EdgeInsets.only(left: 13, right: 14, ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                            Transform.rotate(
                                                angle: -3.14,
                                                child: Container(
                                                    width: 12.35,
                                                    height: 14.68,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    child: FlutterLogo(size: 12.3524169921875),
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            SizedBox(height: 2297.97),
            Text(
                "Başarılı",
                style: TextStyle(
                    color: Color(0xff6d256b),
                    fontSize: 32,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                ),
            ),
            SizedBox(height: 2297.97),
            Container(
                width: 231,
                height: 18,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.20, ),
                ),
            ),
            SizedBox(height: 2297.97),
            SizedBox(
                width: 18,
                height: 17.41,
                child: Text(
                    "Sn. ",
                    style: TextStyle(
                        color: Color(0xff1d1b52),
                        fontSize: 12,
                    ),
                ),
            ),
            SizedBox(height: 2297.97),
            Container(
                width: 231,
                height: 18,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.20, ),
                ),
            ),
            SizedBox(height: 2297.97),
            Container(
                width: 390.01,
                height: 1,
            ),
            SizedBox(height: 2297.97),
            Container(
                width: 260,
                height: 203,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 260,
                            height: 203,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                            ),
                            child: FlutterLogo(size: 203),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 2297.97),
            Text(
                "Bilgileriniz başarıyla güncellendi.",
                style: TextStyle(
                    color: Color(0xff1d1b52),
                    fontSize: 22,
                ),
            ),
            SizedBox(height: 2297.97),
            Container(
                width: 236,
                height: 48.33,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 236,
                            height: 48.33,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                    BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 2),
                                    ),
                                ],
                                color: Color(0xffc02465),
                            ),
                            padding: const EdgeInsets.only(left: 47, right: 39, top: 14, bottom: 20, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    SizedBox(
                                        width: 150,
                                        height: 13.93,
                                        child: Text(
                                            "Ana Sayfaya Dön",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w700,
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