Container(
    width: 430,
    height: 932,
    color: Colors.white,
    child: Stack(
        children:[
            Positioned(
                left: 111,
                top: 55,
                child: Text(
                    "Fiber İnternet",
                    style: TextStyle(
                        color: Color(0xff6d256b),
                        fontSize: 32,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                    ),
                ),
            ),
            Positioned(
                left: 19,
                top: 164,
                child: Container(
                    width: 390.01,
                    height: 1,
                ),
            ),
            Positioned(
                left: 19,
                top: 144,
                child: Text(
                    "Sn. ",
                    style: TextStyle(
                        color: Color(0xff1d1b52),
                        fontSize: 12,
                    ),
                ),
            ),
            Positioned(
                left: 40,
                top: 142,
                child: Container(
                    width: 231,
                    height: 18,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 0.20, ),
                    ),
                ),
            ),
            Positioned(
                left: 22,
                top: 59,
                child: Container(
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
            ),
            Positioned(
                left: 28,
                top: 550,
                child: Container(
                    width: 181,
                    height: 291,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                            Container(
                                width: 181,
                                height: 291,
                                child: Stack(
                                    children: [
                                        Positioned.fill(
                                            child: Stack(
                                                children:[
                                                    Positioned.fill(
                                                        child: Align(
                                                            alignment: Alignment.topCenter,
                                                            child: Container(
                                                                width: 149,
                                                                height: 269,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                    color: Colors.white,
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned.fill(
                                                        child: Align(
                                                            alignment: Alignment.topCenter,
                                                            child: Container(
                                                                width: 149,
                                                                height: 55,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                    color: Color(0xff6d256b),
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 33,
                                                        top: 20,
                                                        child: SizedBox(
                                                            width: 115,
                                                            height: 22,
                                                            child: Text(
                                                                "Yalın Fiber 75",
                                                                style: TextStyle(
                                                                    color: Colors.white,
                                                                    fontSize: 17,
                                                                    fontFamily: "Inter",
                                                                    fontWeight: FontWeight.w600,
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 56,
                                                        top: 78,
                                                        child: Container(
                                                            width: 69,
                                                            height: 157,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(8),
                                                            ),
                                                            child: FlutterLogo(size: 69),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 50,
                                                        top: 87,
                                                        child: Container(
                                                            width: 80,
                                                            height: 135,
                                                            child: Column(
                                                                mainAxisSize: MainAxisSize.min,
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children:[
                                                                    SizedBox(
                                                                        width: 80,
                                                                        height: 17,
                                                                        child: Text(
                                                                            "Tarife Hızı",
                                                                            style: TextStyle(
                                                                                color: Color(0xff6d256b),
                                                                                fontSize: 17,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 59,
                                                                        height: 15,
                                                                        child: Text(
                                                                            "75 Mbps",
                                                                            style: TextStyle(
                                                                                color: Color(0xff4d4d4d),
                                                                                fontSize: 14,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 62,
                                                                        height: 20,
                                                                        child: Text(
                                                                            "Upload",
                                                                            style: TextStyle(
                                                                                color: Color(0xff6d256b),
                                                                                fontSize: 17,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 51,
                                                                        height: 19,
                                                                        child: Text(
                                                                            "8 Mbps",
                                                                            style: TextStyle(
                                                                                color: Color(0xff4d4d4d),
                                                                                fontSize: 14,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 43,
                                                                        height: 18,
                                                                        child: Text(
                                                                            "Kota",
                                                                            style: TextStyle(
                                                                                color: Color(0xff6d256b),
                                                                                fontSize: 17,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 51,
                                                                        height: 15,
                                                                        child: Text(
                                                                            "AKN’siz",
                                                                            style: TextStyle(
                                                                                color: Color(0xff4d4d4d),
                                                                                fontSize: 14,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                        Positioned.fill(
                                            child: FlutterLogo(size: 181),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 28,
                top: 234,
                child: Container(
                    width: 181,
                    height: 291,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                            Container(
                                width: 181,
                                height: 291,
                                child: Stack(
                                    children: [
                                        Positioned.fill(
                                            child: Stack(
                                                children:[
                                                    Positioned.fill(
                                                        child: Align(
                                                            alignment: Alignment.topCenter,
                                                            child: Container(
                                                                width: 149,
                                                                height: 270,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                    color: Colors.white,
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned.fill(
                                                        child: Align(
                                                            alignment: Alignment.topCenter,
                                                            child: Container(
                                                                width: 149,
                                                                height: 56,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                    color: Color(0xffc02465),
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 36,
                                                        top: 21,
                                                        child: SizedBox(
                                                            width: 114,
                                                            height: 23,
                                                            child: Text(
                                                                "Yalın Fiber 10",
                                                                style: TextStyle(
                                                                    color: Colors.white,
                                                                    fontSize: 17,
                                                                    fontFamily: "Inter",
                                                                    fontWeight: FontWeight.w600,
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 56,
                                                        top: 232,
                                                        child: Container(
                                                            width: 68,
                                                            height: 1,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(8),
                                                                color: Color(0xffa6a6a6),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 56,
                                                        top: 78,
                                                        child: Container(
                                                            width: 68,
                                                            height: 1,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(8),
                                                                color: Color(0xffa6a6a6),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 50,
                                                        top: 85,
                                                        child: Container(
                                                            width: 80,
                                                            height: 135,
                                                            child: Column(
                                                                mainAxisSize: MainAxisSize.min,
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children:[
                                                                    SizedBox(
                                                                        width: 80,
                                                                        height: 17,
                                                                        child: Text(
                                                                            "Tarife Hızı",
                                                                            style: TextStyle(
                                                                                color: Color(0xffc02465),
                                                                                fontSize: 17,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 57,
                                                                        height: 15,
                                                                        child: Text(
                                                                            "10 Mbps",
                                                                            style: TextStyle(
                                                                                color: Color(0xff4d4d4d),
                                                                                fontSize: 14,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 62,
                                                                        height: 20,
                                                                        child: Text(
                                                                            "Upload",
                                                                            style: TextStyle(
                                                                                color: Color(0xffc02465),
                                                                                fontSize: 17,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 48,
                                                                        height: 19,
                                                                        child: Text(
                                                                            "1 Mbps",
                                                                            style: TextStyle(
                                                                                color: Color(0xff4d4d4d),
                                                                                fontSize: 14,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 43,
                                                                        height: 18,
                                                                        child: Text(
                                                                            "Kota",
                                                                            style: TextStyle(
                                                                                color: Color(0xffc02465),
                                                                                fontSize: 17,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 51,
                                                                        height: 15,
                                                                        child: Text(
                                                                            "AKN’siz",
                                                                            style: TextStyle(
                                                                                color: Color(0xff4d4d4d),
                                                                                fontSize: 14,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 46,
                                                        top: 233,
                                                        child: SizedBox(
                                                            width: 94,
                                                            height: 30,
                                                            child: Text(
                                                                "99,00 ₺ ",
                                                                style: TextStyle(
                                                                    color: Color(0xffc02465),
                                                                    fontSize: 24,
                                                                    fontFamily: "Inter",
                                                                    fontWeight: FontWeight.w500,
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                        Positioned.fill(
                                            child: FlutterLogo(size: 181),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 225,
                top: 234,
                child: Container(
                    width: 181,
                    height: 291,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                            Container(
                                width: 181,
                                height: 291,
                                child: Stack(
                                    children: [
                                        Positioned.fill(
                                            child: Stack(
                                                children:[
                                                    Positioned.fill(
                                                        child: Align(
                                                            alignment: Alignment.topCenter,
                                                            child: Container(
                                                                width: 149,
                                                                height: 270,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                    color: Colors.white,
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned.fill(
                                                        child: Align(
                                                            alignment: Alignment.topCenter,
                                                            child: Container(
                                                                width: 149,
                                                                height: 56,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                    color: Color(0xff6d256b),
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 34,
                                                        top: 21,
                                                        child: SizedBox(
                                                            width: 116,
                                                            height: 23,
                                                            child: Text(
                                                                "Yalın Fiber 35",
                                                                style: TextStyle(
                                                                    color: Colors.white,
                                                                    fontSize: 17,
                                                                    fontFamily: "Inter",
                                                                    fontWeight: FontWeight.w600,
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 56,
                                                        top: 79,
                                                        child: Container(
                                                            width: 69,
                                                            height: 154,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(8),
                                                            ),
                                                            child: FlutterLogo(size: 69),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 50,
                                                        top: 86,
                                                        child: Container(
                                                            width: 80,
                                                            height: 135,
                                                            child: Column(
                                                                mainAxisSize: MainAxisSize.min,
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children:[
                                                                    SizedBox(
                                                                        width: 80,
                                                                        height: 17,
                                                                        child: Text(
                                                                            "Tarife Hızı",
                                                                            style: TextStyle(
                                                                                color: Color(0xff6d256b),
                                                                                fontSize: 17,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 5.80),
                                                                    SizedBox(
                                                                        width: 67,
                                                                        height: 15,
                                                                        child: Text(
                                                                            "35 Mbps",
                                                                            style: TextStyle(
                                                                                color: Color(0xff4d4d4d),
                                                                                fontSize: 14,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 5.80),
                                                                    SizedBox(
                                                                        width: 62,
                                                                        height: 20,
                                                                        child: Text(
                                                                            "Upload",
                                                                            style: TextStyle(
                                                                                color: Color(0xff6d256b),
                                                                                fontSize: 17,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 5.80),
                                                                    SizedBox(
                                                                        width: 54,
                                                                        height: 21,
                                                                        child: Text(
                                                                            "6 Mbps",
                                                                            style: TextStyle(
                                                                                color: Color(0xff4d4d4d),
                                                                                fontSize: 14,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 5.80),
                                                                    SizedBox(
                                                                        width: 43,
                                                                        height: 18,
                                                                        child: Text(
                                                                            "Kota",
                                                                            style: TextStyle(
                                                                                color: Color(0xff6d256b),
                                                                                fontSize: 17,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 5.80),
                                                                    SizedBox(
                                                                        width: 51,
                                                                        height: 15,
                                                                        child: Text(
                                                                            "AKN’siz",
                                                                            style: TextStyle(
                                                                                color: Color(0xff4d4d4d),
                                                                                fontSize: 14,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 45,
                                                        top: 233,
                                                        child: SizedBox(
                                                            width: 108,
                                                            height: 30,
                                                            child: Text(
                                                                "109,00 ₺ ",
                                                                style: TextStyle(
                                                                    color: Color(0xffc02465),
                                                                    fontSize: 24,
                                                                    fontFamily: "Inter",
                                                                    fontWeight: FontWeight.w500,
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                        Positioned.fill(
                                            child: FlutterLogo(size: 181),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 225,
                top: 550,
                child: Container(
                    width: 181,
                    height: 291,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                            Container(
                                width: 181,
                                height: 291,
                                child: Stack(
                                    children: [
                                        Positioned.fill(
                                            child: Stack(
                                                children:[
                                                    Positioned.fill(
                                                        child: Align(
                                                            alignment: Alignment.topCenter,
                                                            child: Container(
                                                                width: 149,
                                                                height: 269,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                    color: Colors.white,
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned.fill(
                                                        child: Align(
                                                            alignment: Alignment.topCenter,
                                                            child: Container(
                                                                width: 149,
                                                                height: 55,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                    color: Color(0xffc02465),
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 27,
                                                        top: 20,
                                                        child: SizedBox(
                                                            width: 126,
                                                            height: 22,
                                                            child: Text(
                                                                "Yalın Fiber 100",
                                                                style: TextStyle(
                                                                    color: Colors.white,
                                                                    fontSize: 17,
                                                                    fontFamily: "Inter",
                                                                    fontWeight: FontWeight.w600,
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 56.39,
                                                        top: 78.02,
                                                        child: Container(
                                                            width: 68.15,
                                                            height: 156.98,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(8),
                                                            ),
                                                            child: FlutterLogo(size: 68.15438842773438),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 50,
                                                        top: 86,
                                                        child: Container(
                                                            width: 80,
                                                            height: 135,
                                                            child: Column(
                                                                mainAxisSize: MainAxisSize.min,
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children:[
                                                                    SizedBox(
                                                                        width: 80,
                                                                        height: 17,
                                                                        child: Text(
                                                                            "Tarife Hızı",
                                                                            style: TextStyle(
                                                                                color: Color(0xffc02465),
                                                                                fontSize: 17,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 67,
                                                                        height: 15,
                                                                        child: Text(
                                                                            "100 Mbps",
                                                                            style: TextStyle(
                                                                                color: Color(0xff4d4d4d),
                                                                                fontSize: 14,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 62,
                                                                        height: 20,
                                                                        child: Text(
                                                                            "Upload",
                                                                            style: TextStyle(
                                                                                color: Color(0xffc02465),
                                                                                fontSize: 17,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 56,
                                                                        height: 19,
                                                                        child: Text(
                                                                            "8 Mbps",
                                                                            style: TextStyle(
                                                                                color: Color(0xff4d4d4d),
                                                                                fontSize: 14,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 43,
                                                                        height: 18,
                                                                        child: Text(
                                                                            "Kota",
                                                                            style: TextStyle(
                                                                                color: Color(0xffc02465),
                                                                                fontSize: 17,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 6.20),
                                                                    SizedBox(
                                                                        width: 51,
                                                                        height: 15,
                                                                        child: Text(
                                                                            "AKN’siz",
                                                                            style: TextStyle(
                                                                                color: Color(0xff4d4d4d),
                                                                                fontSize: 14,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                    Positioned(
                                                        left: 45,
                                                        top: 234,
                                                        child: SizedBox(
                                                            width: 106,
                                                            height: 30,
                                                            child: Text(
                                                                "129,00 ₺ ",
                                                                style: TextStyle(
                                                                    color: Color(0xffc02465),
                                                                    fontSize: 24,
                                                                    fontFamily: "Inter",
                                                                    fontWeight: FontWeight.w500,
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                        Positioned.fill(
                                            child: FlutterLogo(size: 181),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 78,
                top: 784,
                child: SizedBox(
                    width: 100,
                    height: 30,
                    child: Text(
                        "129,00 ₺ ",
                        style: TextStyle(
                            color: Color(0xffc02465),
                            fontSize: 24,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                        ),
                    ),
                ),
            ),
        ],
    ),
)