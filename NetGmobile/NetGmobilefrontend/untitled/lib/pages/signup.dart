Container(
    width: 430,
    height: 932,
    color: Colors.white,
    padding: const EdgeInsets.only(top: 140, bottom: 124, ),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container(
                width: 270,
                height: 82,
                child: FlutterLogo(size: 82),
            ),
            SizedBox(height: 17.11),
            Text(
                "Merhaba",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff1d1b52),
                    fontSize: 28,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700,
                ),
            ),
            SizedBox(height: 17.11),
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
                            padding: const EdgeInsets.only(left: 24, right: 169, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Opacity(
                                        opacity: 0.50,
                                        child: Text(
                                            "TC Kimlik Numaranız",
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
            SizedBox(height: 17.11),
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
                            padding: const EdgeInsets.only(left: 24, right: 183, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Opacity(
                                        opacity: 0.50,
                                        child: Text(
                                            "Telefon Numaranız",
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
            SizedBox(height: 17.11),
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
            SizedBox(height: 17.11),
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
                            padding: const EdgeInsets.only(left: 23, right: 162, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Opacity(
                                        opacity: 0.50,
                                        child: Text(
                                            "Şifrenizi Tekrar Giriniz",
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
            SizedBox(height: 17.11),
            Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0x3d000000), width: 1, ),
                    color: Colors.white,
                ),
            ),
            SizedBox(height: 17.11),
            Text(
                "Kullanıcı Sözleşmesini okudum ve onaylıyorum.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff93246b),
                    fontSize: 13,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                ),
            ),
            SizedBox(height: 17.11),
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
                                color: Color(0xff6d256b),
                            ),
                            padding: const EdgeInsets.only(left: 136, right: 135, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Text(
                                        "Kayıt Ol",
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
            SizedBox(height: 17.11),
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
                                color: Colors.white,
                            ),
                            padding: const EdgeInsets.only(left: 136, right: 125, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Text(
                                        "Giriş Yap",
                                        style: TextStyle(
                                            color: Color(0xff1d1b52),
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