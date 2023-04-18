Container(
    width: 430,
    height: 932,
    color: Colors.white,
    padding: const EdgeInsets.only(top: 9, bottom: 78, ),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container(
                width: double.infinity,
                height: 477,
                child: Stack(
                    children: [
                        Positioned.fill(
                            child: Stack(
                                children:[
                                    Positioned(
                                        left: 191.50,
                                        top: 27,
                                        child: Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(color: Color(0x7f93246b), width: 1, ),
                                                color: Colors.white,
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 201.12,
                                        top: 38.38,
                                        child: Container(
                                            width: 15.75,
                                            height: 12.65,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                boxShadow: [
                                                    BoxShadow(
                                                        color: Color(0x3f000000),
                                                        blurRadius: 4,
                                                        offset: Offset(0, 4),
                                                    ),
                                                ],
                                            ),
                                            child: FlutterLogo(size: 12.651291847229004),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                        Positioned.fill(
                            child: FlutterLogo(size: 477),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 33.75),
            SizedBox(
                width: 250,
                height: 34,
                child: Text(
                    "Şifremi Unuttum",
                    style: TextStyle(
                        color: Color(0xff1d1b52),
                        fontSize: 28,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                    ),
                ),
            ),
            SizedBox(height: 33.75),
            SizedBox(
                width: 313,
                height: 79,
                child: Text(
                    "Yeni şifreniz, belirttiğiniz telefon numarasına sistemimizdekiyle eşleştiği takdirde SMS olarak gönderilecektir.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff1d1b52),
                        fontSize: 16,
                    ),
                ),
            ),
            SizedBox(height: 33.75),
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
                            padding: const EdgeInsets.only(left: 16, right: 168, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Opacity(
                                        opacity: 0.50,
                                        child: Text(
                                            "Telefon numaranız",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 33.75),
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
                            padding: const EdgeInsets.only(left: 139, right: 135, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Text(
                                        "Gönder",
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
        ],
    ),
)