Container(
    width: 430,
    height: 932,
    color: Colors.white,
    padding: const EdgeInsets.only(right: 37, top: 115, bottom: 71, ),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
            Container(
                width: 270,
                height: 82,
                child: FlutterLogo(size: 82),
            ),
            SizedBox(height: 30.43),
            Text(
                "Giriş Yapın",
                style: TextStyle(
                    color: Color(0xff1d1b52),
                    fontSize: 28,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700,
                ),
            ),
            SizedBox(height: 30.43),
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
                                border: Border.all(color: Color(0x3d000000), width: 1, ),
                                color: Colors.white,
                            ),
                            padding: const EdgeInsets.only(left: 24, right: 178, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Opacity(
                                        opacity: 0.50,
                                        child: Text(
                                            "TC Kimlik Numarası",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 30.43),
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
                                border: Border.all(color: Color(0x3d000000), width: 1, ),
                                color: Colors.white,
                            ),
                            padding: const EdgeInsets.only(left: 24, right: 262, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Opacity(
                                        opacity: 0.50,
                                        child: Text(
                                            "Şifreniz",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 30.43),
            Container(
                width: 31,
                height: 28.67,
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
                ),
            ),
            SizedBox(height: 30.43),
            Text(
                "Beni Hatırla",
                style: TextStyle(
                    color: Color(0xff1d1b52),
                    fontSize: 18,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                ),
            ),
            SizedBox(height: 30.43),
            Text(
                "Şifremi Unuttum",
                style: TextStyle(
                    color: Color(0xff1d1b52),
                    fontSize: 18,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                ),
            ),
            SizedBox(height: 30.43),
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
                            padding: const EdgeInsets.only(left: 130, right: 131, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Text(
                                        "Giriş Yap",
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
            SizedBox(height: 30.43),
            Text(
                "Üye değil misin?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff0c144c),
                    fontSize: 16,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                ),
            ),
            SizedBox(height: 30.43),
            Container(
                width: 224,
                height: 37,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 224,
                            height: 37,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                boxShadow: [
                                    BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 2),
                                    ),
                                ],
                                color: Color(0xff93246b),
                            ),
                            padding: const EdgeInsets.only(left: 85, right: 52, top: 7, bottom: 19, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                    SizedBox(
                                        width: 87.32,
                                        height: 11.26,
                                        child: Text(
                                            "Üye Ol",
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
            SizedBox(height: 30.43),
            Text(
                "Üye Ol",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                ),
            ),
        ],
    ),
)