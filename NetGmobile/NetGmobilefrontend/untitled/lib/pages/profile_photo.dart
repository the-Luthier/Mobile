Container(
    width: 430,
    height: 932,
    color: Colors.white,
    child: Stack(
        children:[
            Positioned(
                left: 22,
                top: 58,
                child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0x7f93246b), width: 1, ),
                        boxShadow: [
                            BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 4,
                                offset: Offset(0, 2),
                            ),
                        ],
                        color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11, ),
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
            ),

            Positioned(
                left: 162,
                top: 111,
                child: Container(
                    width: 111,
                    height: 109,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xff6d256b), width: 0.40, ),
                        color: Color(0x33ffffff),
                    ),
                ),
            ),
            Positioned(
                left: 180,
                top: 124,
                child: Container(
                    width: 74,
                    height: 74,
                    child: FlutterLogo(size: 74),
                ),
            ),
            Positioned(
                left: 84,
                top: 234,
                child: SizedBox(
                    width: 262,
                    height: 24,
                    child: Text(
                        "Hasan Sezgin Karabulut",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff1d1b52),
                            fontSize: 18,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w300,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 119,
                top: 258,
                child: SizedBox(
                    width: 192,
                    height: 16,
                    child: Text(
                        "Hizmet Numarası: 2343566",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff1d1b52),
                            fontSize: 11,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 22,
                top: 305,
                child: Container(
                    width: 390.01,
                    height: 1,
                ),
            ),
            Positioned(
                left: 247,
                top: 192,
                child: Container(
                    width: 26,
                    height: 27,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                    ),
                ),
            ),
            Positioned(
                left: 243,
                top: 185,
                child: Container(
                    width: 38,
                    height: 37,
                    child: FlutterLogo(size: 37),
                ),
            ),
            Positioned(
                left: 22,
                top: 371,
                child: Container(
                    width: 174,
                    height: 181,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0x7fc02465), width: 1, ),
                        color: Colors.white,
                    ),
                    padding: const EdgeInsets.only(left: 55, right: 53, top: 125, bottom: 38, ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:[
                            Text(
                                "Bilgilerim",
                                style: TextStyle(
                                    color: Color(0xff1d1b52),
                                    fontSize: 15,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w500,
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 237,
                top: 371,
                child: Container(
                    width: 174,
                    height: 181,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0x7fc02465), width: 1, ),
                        color: Colors.white,
                    ),
                    padding: const EdgeInsets.only(left: 54, right: 39, top: 124, bottom: 39, ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:[
                            Text(
                                "Abonelikler",
                                style: TextStyle(
                                    color: Color(0xff1d1b52),
                                    fontSize: 15,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w500,
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 23,
                top: 612,
                child: Container(
                    width: 174,
                    height: 181,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0x7fc02465), width: 1, ),
                        color: Colors.white,
                    ),
                    padding: const EdgeInsets.only(top: 135, bottom: 28, ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:[
                            Text(
                                "Bana Özel",
                                style: TextStyle(
                                    color: Color(0xff1d1b52),
                                    fontSize: 15,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w500,
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 238,
                top: 611,
                child: Container(
                    width: 174,
                    height: 181,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0x7fc02465), width: 1, ),
                        color: Colors.white,
                    ),
                    padding: const EdgeInsets.only(left: 68, right: 55, top: 135, bottom: 28, ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:[
                            Text(
                                "Destek",
                                style: TextStyle(
                                    color: Color(0xff1d1b52),
                                    fontSize: 15,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w500,
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 238,
                top: 612,
                child: Container(
                    width: 174,
                    height: 181,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0x7fc02465), width: 1, ),
                        color: Colors.white,
                    ),
                ),
            ),
            Positioned(
                left: 375,
                top: 56,
                child: Container(
                    width: 33,
                    height: 34,
                    child: FlutterLogo(size: 33),
                ),
            ),
            Positioned(
                left: 378,
                top: 260,
                child: Container(
                    width: 26,
                    height: 26,
                    child: FlutterLogo(size: 26),
                ),
            ),
            Positioned(
                left: 165,
                top: 54,
                child: Text(
                    "Profilim",
                    style: TextStyle(
                        color: Color(0xff6d256b),
                        fontSize: 32,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                    ),
                ),
            ),
            Positioned.fill(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        width: 449,
                        height: 936,
                        child: Stack(
                            children: [
                                Positioned.fill(
                                    child: Stack(
                                        children:[
                                            Positioned(
                                                left: 155,
                                                top: 611,
                                                child: Text(
                                                    "Fotoğraf Çek",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                        fontFamily: "Inter",
                                                        fontWeight: FontWeight.w500,
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 149,
                                                top: 702,
                                                child: Text(
                                                    "Galeriden Seç",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                        fontFamily: "Inter",
                                                        fontWeight: FontWeight.w500,
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 30,
                                                top: 260,
                                                child: Container(
                                                    width: 390,
                                                    height: 611,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(80), topRight: Radius.circular(80), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0), ),
                                                        color: Colors.white,
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 30,
                                                top: 262,
                                                child: Container(
                                                    width: 390,
                                                    height: 609,
                                                    child: FlutterLogo(size: 390),
                                                ),
                                            ),
                                            Positioned(
                                                left: 113,
                                                top: 485,
                                                child: Container(
                                                    width: 227,
                                                    height: 53,
                                                    child: Stack(
                                                        children:[Positioned.fill(
                                                            child: Align(
                                                                alignment: Alignment.topLeft,
                                                                child: Container(
                                                                    width: 227,
                                                                    height: 49.32,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(8),
                                                                        boxShadow: [
                                                                            BoxShadow(
                                                                                color: Color(0x19000000),
                                                                                blurRadius: 4,
                                                                                offset: Offset(0, 2),
                                                                            ),
                                                                        ],
                                                                        gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [Color(0xffc02465), Color(0xff1d1b52)], ),
                                                                    ),
                                                                ),
                                                            ),
                                                        ),
                                                        Positioned(
                                                            left: 33,
                                                            top: 14,
                                                            child: SizedBox(
                                                                width: 180,
                                                                height: 39,
                                                                child: Text(
                                                                    "Galeriden Seç",
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        fontSize: 20,
                                                                        fontFamily: "Inter",
                                                                        fontWeight: FontWeight.w500,
                                                                    ),
                                                                ),
                                                            ),
                                                        ),],
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 111,
                                                top: 578,
                                                child: Container(
                                                    width: 227,
                                                    height: 53,
                                                    child: Stack(
                                                        children:[Positioned.fill(
                                                            child: Align(
                                                                alignment: Alignment.topLeft,
                                                                child: Container(
                                                                    width: 227,
                                                                    height: 49.32,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(8),
                                                                        boxShadow: [
                                                                            BoxShadow(
                                                                                color: Color(0x19000000),
                                                                                blurRadius: 4,
                                                                                offset: Offset(0, 2),
                                                                            ),
                                                                        ],
                                                                        gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [Color(0xffc02465), Color(0xff1d1b52)], ),
                                                                    ),
                                                                ),
                                                            ),
                                                        ),
                                                        Positioned(
                                                            left: 33,
                                                            top: 14,
                                                            child: SizedBox(
                                                                width: 180,
                                                                height: 39,
                                                                child: Text(
                                                                    "Fotoğraf Çek",
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        fontSize: 20,
                                                                        fontFamily: "Inter",
                                                                        fontWeight: FontWeight.w500,
                                                                    ),
                                                                ),
                                                            ),
                                                        ),],
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 113,
                                                top: 657,
                                                child: Container(
                                                    width: 227,
                                                    height: 49.32,
                                                    child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 227,
                                                                height: 49.32,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                    boxShadow: [
                                                                        BoxShadow(
                                                                            color: Color(0x19000000),
                                                                            blurRadius: 4,
                                                                            offset: Offset(0, 2),
                                                                        ),
                                                                    ],
                                                                    color: Color(0xffd9d9d9),
                                                                ),
                                                                padding: const EdgeInsets.only(left: 92, right: 93, top: 13, bottom: 12, ),
                                                                child: Row(
                                                                    mainAxisSize: MainAxisSize.min,
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children:[
                                                                        SizedBox(
                                                                            width: 42,
                                                                            height: 24,
                                                                            child: Text(
                                                                                "İptal",
                                                                                style: TextStyle(
                                                                                    color: Color(0xff1d1b52),
                                                                                    fontSize: 20,
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
                                            ),
                                            Positioned(
                                                left: 111,
                                                top: 740,
                                                child: Container(
                                                    width: 227,
                                                    height: 49.32,
                                                    child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Container(
                                                                width: 227,
                                                                height: 49.32,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(8),
                                                                    boxShadow: [
                                                                        BoxShadow(
                                                                            color: Color(0x19000000),
                                                                            blurRadius: 4,
                                                                            offset: Offset(0, 2),
                                                                        ),
                                                                    ],
                                                                    color: Color(0xffd9d9d9),
                                                                ),
                                                                padding: const EdgeInsets.only(top: 13, bottom: 12, ),
                                                                child: Row(
                                                                    mainAxisSize: MainAxisSize.min,
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children:[
                                                                        SizedBox(
                                                                            width: 71,
                                                                            height: 24,
                                                                            child: Text(
                                                                                "Onayla",
                                                                                style: TextStyle(
                                                                                    color: Color(0xff1d1b52),
                                                                                    fontSize: 20,
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
                                            ),
                                            Positioned(
                                                left: 108,
                                                top: 121,
                                                child: Container(
                                                    width: 249,
                                                    height: 250,
                                                    child: FlutterLogo(size: 249),
                                                ),
                                            ),
                                            Positioned(
                                                left: 174,
                                                top: 49,
                                                child: Text(
                                                    "Profilim",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 32,
                                                        fontFamily: "Inter",
                                                        fontWeight: FontWeight.w500,
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 299,
                                                top: 604,
                                                child: Container(
                                                    width: 16,
                                                    height: 16,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    child: FlutterLogo(size: 16),
                                                ),
                                            ),
                                            Positioned(
                                                left: 31,
                                                top: 50,
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
                                                left: 107,
                                                top: 401,
                                                child: Container(
                                                    width: 239,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(color: Colors.white, width: 1, ),
                                                    ),
                                                ),
                                            ),
                                            Positioned(
                                                left: 148,
                                                top: 434,
                                                child: Container(
                                                    width: 156,
                                                    height: 24,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(color: Colors.white, width: 0.20, ),
                                                    ),
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                                Positioned.fill(
                                    child: FlutterLogo(size: 449),
                                ),
                            ],
                        ),
                    ),
                ),
            ),
            Positioned.fill(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        width: 439,
                        height: 936,
                        gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xffc02465), Color(0xff1d1b52)], ),
                    ),
                ),
            ),
        ],
    ),
)