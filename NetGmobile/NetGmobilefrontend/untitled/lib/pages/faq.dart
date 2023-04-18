Container(
    width: 430,
    height: 932,
    color: Colors.white,
    padding: const EdgeInsets.only(left: 23, right: 17, top: 54, bottom: 256, ),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
            Text(
                "Sıkça Sorulan Sorular",
                style: TextStyle(
                    color: Color(0xff6d256b),
                    fontSize: 30,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                ),
            ),
            SizedBox(height: 5.07),
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
            SizedBox(height: 5.07),
            Container(
                width: 227,
                height: 18,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.20, ),
                ),
            ),
            SizedBox(height: 5.07),
            Text(
                "Sn. ",
                style: TextStyle(
                    color: Color(0xff1d1b52),
                    fontSize: 12,
                ),
            ),
            SizedBox(height: 5.07),
            Container(
                width: 390.01,
                height: 1,
            ),
            SizedBox(height: 5.07),
            Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: Color(0xffc02465), width: 1, ),
                            color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                                Container(
                                    width: 207,
                                    height: 15,
                                    padding: const EdgeInsets.only(right: 7, bottom: 1, ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                            Text(
                                                "Fiber altyapısı kullanıyor musunuz?",
                                                style: TextStyle(
                                                    color: Color(0xff1d1b52),
                                                    fontSize: 11.80,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w600,
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                                SizedBox(width: 110),
                                Container(
                                    width: 26,
                                    height: 29,
                                    padding: const EdgeInsets.only(right: 15559, bottom: 18159, ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                            Transform.rotate(
                                                angle: 3.14,
                                                child: Container(
                                                    width: 26,
                                                    height: double.infinity,
                                                    child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Transform.rotate(
                                                                angle: 3.14,
                                                                child: Container(
                                                                    width: 26,
                                                                    height: 29,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(5),
                                                                        border: Border.all(color: Color(0xffc02465), width: 1, ),
                                                                        boxShadow: [
                                                                            BoxShadow(
                                                                                color: Color(0x19000000),
                                                                                blurRadius: 4,
                                                                                offset: Offset(0, 2),
                                                                            ),
                                                                        ],
                                                                        color: Colors.white,
                                                                    ),
                                                                    padding: const EdgeInsets.only(left: 10, right: 1, top: 6, bottom: 15, ),
                                                                    child: Row(
                                                                        mainAxisSize: MainAxisSize.min,
                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children:[
                                                                            Transform.rotate(
                                                                                angle: -1.57,
                                                                                child: Container(
                                                                                    width: 16.79,
                                                                                    height: 9.06,
                                                                                    decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                        border: Border.all(color: Color(0xffc02465), width: 1.50, ),
                                                                                        color: Color(0x7f7f3a44),
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
                                            ),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                    SizedBox(height: 24),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: Color(0xffc02465), width: 1, ),
                            color: Colors.white,
                        ),
                        padding: const EdgeInsets.only(top: 10, bottom: 15, ),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                                Container(
                                    width: 207,
                                    height: 15,
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children:[
                                            Text(
                                                "Başka bir operatörden hizmet alıyorum fakat taahhüt\nsüresi dolmadı. Cayma bedelini karşılar mısınız?",
                                                style: TextStyle(
                                                    color: Color(0xff1d1b52),
                                                    fontSize: 11.80,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w600,
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                                SizedBox(width: 110),
                                Container(
                                    width: 26,
                                    height: 29,
                                    padding: const EdgeInsets.only(right: 15559, bottom: 18086, ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                            Transform.rotate(
                                                angle: 3.14,
                                                child: Container(
                                                    width: 26,
                                                    height: double.infinity,
                                                    child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Transform.rotate(
                                                                angle: 3.14,
                                                                child: Container(
                                                                    width: 26,
                                                                    height: 29,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(5),
                                                                        border: Border.all(color: Color(0xffc02465), width: 1, ),
                                                                        boxShadow: [
                                                                            BoxShadow(
                                                                                color: Color(0x19000000),
                                                                                blurRadius: 4,
                                                                                offset: Offset(0, 2),
                                                                            ),
                                                                        ],
                                                                        color: Colors.white,
                                                                    ),
                                                                    padding: const EdgeInsets.only(left: 10, right: 1, top: 6, bottom: 15, ),
                                                                    child: Row(
                                                                        mainAxisSize: MainAxisSize.min,
                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children:[
                                                                            Transform.rotate(
                                                                                angle: -1.57,
                                                                                child: Container(
                                                                                    width: 16.79,
                                                                                    height: 9.06,
                                                                                    decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                        border: Border.all(color: Color(0xffc02465), width: 1.50, ),
                                                                                        color: Color(0x7f7f3a44),
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
                                            ),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                    SizedBox(height: 24),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: Color(0xffc02465), width: 1, ),
                            color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                                Container(
                                    width: 207,
                                    height: 15,
                                    padding: const EdgeInsets.only(bottom: 1, ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                            Text(
                                                "Ev telefonu olmadan NetGalaksi hizmeti alabilir miyim?",
                                                style: TextStyle(
                                                    color: Color(0xff1d1b52),
                                                    fontSize: 11.80,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w600,
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                                SizedBox(width: 110),
                                Container(
                                    width: 26,
                                    height: 29,
                                    padding: const EdgeInsets.only(right: 15559, bottom: 18008, ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                            Transform.rotate(
                                                angle: 3.14,
                                                child: Container(
                                                    width: 26,
                                                    height: double.infinity,
                                                    child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Transform.rotate(
                                                                angle: 3.14,
                                                                child: Container(
                                                                    width: 26,
                                                                    height: 29,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(5),
                                                                        border: Border.all(color: Color(0xffc02465), width: 1, ),
                                                                        boxShadow: [
                                                                            BoxShadow(
                                                                                color: Color(0x19000000),
                                                                                blurRadius: 4,
                                                                                offset: Offset(0, 2),
                                                                            ),
                                                                        ],
                                                                        color: Colors.white,
                                                                    ),
                                                                    padding: const EdgeInsets.only(left: 10, right: 1, top: 6, bottom: 15, ),
                                                                    child: Row(
                                                                        mainAxisSize: MainAxisSize.min,
                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children:[
                                                                            Transform.rotate(
                                                                                angle: -1.57,
                                                                                child: Container(
                                                                                    width: 16.79,
                                                                                    height: 9.06,
                                                                                    decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                        border: Border.all(color: Color(0xffc02465), width: 1.50, ),
                                                                                        color: Color(0x7f7f3a44),
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
                                            ),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                    SizedBox(height: 24),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: Color(0xffc02465), width: 1, ),
                            color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                                Container(
                                    width: 207,
                                    height: 15,
                                    padding: const EdgeInsets.only(bottom: 1, ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                            Text(
                                                "İnternet Kurulumu Ne Kadar Sürede Gerçekleşir?",
                                                style: TextStyle(
                                                    color: Color(0xff1d1b52),
                                                    fontSize: 11.80,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w600,
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                                SizedBox(width: 110),
                                Container(
                                    width: 26,
                                    height: 29,
                                    padding: const EdgeInsets.only(right: 15559, bottom: 17935, ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                            Transform.rotate(
                                                angle: 3.14,
                                                child: Container(
                                                    width: 26,
                                                    height: double.infinity,
                                                    child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Transform.rotate(
                                                                angle: 3.14,
                                                                child: Container(
                                                                    width: 26,
                                                                    height: 29,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(5),
                                                                        border: Border.all(color: Color(0xffc02465), width: 1, ),
                                                                        boxShadow: [
                                                                            BoxShadow(
                                                                                color: Color(0x19000000),
                                                                                blurRadius: 4,
                                                                                offset: Offset(0, 2),
                                                                            ),
                                                                        ],
                                                                        color: Colors.white,
                                                                    ),
                                                                    padding: const EdgeInsets.only(left: 10, right: 1, top: 6, bottom: 15, ),
                                                                    child: Row(
                                                                        mainAxisSize: MainAxisSize.min,
                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children:[
                                                                            Transform.rotate(
                                                                                angle: -1.57,
                                                                                child: Container(
                                                                                    width: 16.79,
                                                                                    height: 9.06,
                                                                                    decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                        border: Border.all(color: Color(0xffc02465), width: 1.50, ),
                                                                                        color: Color(0x7f7f3a44),
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
                                            ),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                    SizedBox(height: 24),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: Color(0xffc02465), width: 1, ),
                            color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                                Container(
                                    width: 207,
                                    height: 15,
                                    padding: const EdgeInsets.only(bottom: 1, ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                            Text(
                                                "NetGalaksi Tarifelerinden Kimler Yararlanabilir?",
                                                style: TextStyle(
                                                    color: Color(0xff1d1b52),
                                                    fontSize: 11.80,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w600,
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                                SizedBox(width: 110),
                                Container(
                                    width: 26,
                                    height: 29,
                                    padding: const EdgeInsets.only(right: 15559, bottom: 17862, ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                            Transform.rotate(
                                                angle: 3.14,
                                                child: Container(
                                                    width: 26,
                                                    height: double.infinity,
                                                    child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Transform.rotate(
                                                                angle: 3.14,
                                                                child: Container(
                                                                    width: 26,
                                                                    height: 29,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(5),
                                                                        border: Border.all(color: Color(0xffc02465), width: 1, ),
                                                                        boxShadow: [
                                                                            BoxShadow(
                                                                                color: Color(0x19000000),
                                                                                blurRadius: 4,
                                                                                offset: Offset(0, 2),
                                                                            ),
                                                                        ],
                                                                        color: Colors.white,
                                                                    ),
                                                                    padding: const EdgeInsets.only(left: 10, right: 1, top: 6, bottom: 15, ),
                                                                    child: Row(
                                                                        mainAxisSize: MainAxisSize.min,
                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children:[
                                                                            Transform.rotate(
                                                                                angle: -1.57,
                                                                                child: Container(
                                                                                    width: 16.79,
                                                                                    height: 9.06,
                                                                                    decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                        border: Border.all(color: Color(0xffc02465), width: 1.50, ),
                                                                                        color: Color(0x7f7f3a44),
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
                                            ),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                    SizedBox(height: 24),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: Color(0xffc02465), width: 1, ),
                            color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                                Container(
                                    width: 207,
                                    height: 15,
                                    padding: const EdgeInsets.only(right: 12, bottom: 1, ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                            Text(
                                                "Statik IP Hizmeti Almak İstiyorum?",
                                                style: TextStyle(
                                                    color: Color(0xff1d1b52),
                                                    fontSize: 11.80,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w600,
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                                SizedBox(width: 110),
                                Container(
                                    width: 26,
                                    height: 29,
                                    padding: const EdgeInsets.only(right: 15559, bottom: 17789, ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                            Transform.rotate(
                                                angle: 3.14,
                                                child: Container(
                                                    width: 26,
                                                    height: double.infinity,
                                                    child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Transform.rotate(
                                                                angle: 3.14,
                                                                child: Container(
                                                                    width: 26,
                                                                    height: 29,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(5),
                                                                        border: Border.all(color: Color(0xffc02465), width: 1, ),
                                                                        boxShadow: [
                                                                            BoxShadow(
                                                                                color: Color(0x19000000),
                                                                                blurRadius: 4,
                                                                                offset: Offset(0, 2),
                                                                            ),
                                                                        ],
                                                                        color: Colors.white,
                                                                    ),
                                                                    padding: const EdgeInsets.only(left: 10, right: 1, top: 6, bottom: 15, ),
                                                                    child: Row(
                                                                        mainAxisSize: MainAxisSize.min,
                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children:[
                                                                            Transform.rotate(
                                                                                angle: -1.57,
                                                                                child: Container(
                                                                                    width: 16.79,
                                                                                    height: 9.06,
                                                                                    decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                        border: Border.all(color: Color(0xffc02465), width: 1.50, ),
                                                                                        color: Color(0x7f7f3a44),
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
                                            ),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                    SizedBox(height: 24),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: Color(0xffc02465), width: 1, ),
                            color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                                Container(
                                    width: 207,
                                    height: 15,
                                    padding: const EdgeInsets.only(right: 11, bottom: 1, ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                            Text(
                                                "Müşteri Bilgilerim Paylaşılacak Mı?",
                                                style: TextStyle(
                                                    color: Color(0xff1d1b52),
                                                    fontSize: 11.80,
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w600,
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                                SizedBox(width: 110),
                                Container(
                                    width: 26,
                                    height: 29,
                                    padding: const EdgeInsets.only(right: 15559, bottom: 17716, ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                            Transform.rotate(
                                                angle: 3.14,
                                                child: Container(
                                                    width: 26,
                                                    height: double.infinity,
                                                    child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children:[
                                                            Transform.rotate(
                                                                angle: 3.14,
                                                                child: Container(
                                                                    width: 26,
                                                                    height: 29,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(5),
                                                                        border: Border.all(color: Color(0xffc02465), width: 1, ),
                                                                        boxShadow: [
                                                                            BoxShadow(
                                                                                color: Color(0x19000000),
                                                                                blurRadius: 4,
                                                                                offset: Offset(0, 2),
                                                                            ),
                                                                        ],
                                                                        color: Colors.white,
                                                                    ),
                                                                    padding: const EdgeInsets.only(left: 10, right: 1, top: 6, bottom: 15, ),
                                                                    child: Row(
                                                                        mainAxisSize: MainAxisSize.min,
                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children:[
                                                                            Transform.rotate(
                                                                                angle: -1.57,
                                                                                child: Container(
                                                                                    width: 16.79,
                                                                                    height: 9.06,
                                                                                    decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                        border: Border.all(color: Color(0xffc02465), width: 1.50, ),
                                                                                        color: Color(0x7f7f3a44),
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
                                            ),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                ],
            ),
        ],
    ),
)