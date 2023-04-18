Container(
    width: 430,
    height: 932,
    color: Colors.white,
    padding: const EdgeInsets.only(left: 17, right: 21, top: 124, bottom: 87, ),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Container(
                width: 355,
                height: 320,
                child: FlutterLogo(size: 320),
            ),
            SizedBox(height: 57.67),
            SizedBox(
                width: 392,
                child: Text(
                    "Tek kullanımlık  şifreniz belirttiğiniz telefon numarasına gönderildi.\n",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff1d1b52),
                        fontSize: 22,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600,
                    ),
                ),
            ),
            SizedBox(height: 57.67),
            SizedBox(
                width: 392,
                child: Text(
                    "Giriş yaptıktan sonra şifrenizi güncelleyebilirsiniz.\n",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff1d1b52),
                        fontSize: 22,
                    ),
                ),
            ),
            SizedBox(height: 57.67),
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
                padding: const EdgeInsets.only(left: 143, right: 155, ),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Text(
                            "Giriş",
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
)