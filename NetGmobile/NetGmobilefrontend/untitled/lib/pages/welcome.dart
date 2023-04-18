Container(
    width: 430,
    height: 932,
    color: Colors.white,
    padding: const EdgeInsets.only(left: 47, right: 43, top: 126, bottom: 57, ),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container(
                width: 270,
                height: 82,
                child: FlutterLogo(size: 82),
            ),
            SizedBox(height: 56.25),
            Text(
                "Hoş Geldiniz",
                style: TextStyle(
                    color: Color(0xff1d1b52),
                    fontSize: 30,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700,
                ),
            ),
            SizedBox(height: 56.25),
            SizedBox(
                width: 329,
                child: Text(
                    "NetGalaksi, dünya standartlarındaki\naltyapısı ile müşterilerine\nyüksek hızlı intenet sunmaya\ndevam ediyor. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff1d1b52),
                        fontSize: 18,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w300,
                    ),
                ),
            ),
            SizedBox(height: 56.25),
            Container(
                width: 340,
                height: 60,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 340,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                boxShadow: [
                                    BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 2),
                                    ),
                                ],
                                color: Color(0xffc02465),
                            ),
                            padding: const EdgeInsets.only(left: 130, right: 108, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Text(
                                        "Şimdi Başla",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w700,
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 56.25),
            Container(
                width: 254,
                height: 292,
                child: FlutterLogo(size: 254),
            ),
        ],
    ),
)