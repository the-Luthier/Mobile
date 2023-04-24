// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SevenButtonsPage extends StatelessWidget {
  final String fullName;
  const SevenButtonsPage({super.key, required this.fullName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seven Buttons Page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            alignment: Alignment.center,
            child: Text(
              fullName,
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16.0),
              childAspectRatio: 1.5,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
              children: [
                _buildButton(context, 'Fiber altyapısı kullanıyor musunuz?',
                    '/Evet, NetGalaksi altyapısıyla sunulan Fiber İnternet, üst düzey bağlantı hızını, güvenliğini ve kalitesini kullanıcılarımızla buluşturuyor.'),
                _buildButton(
                    context,
                    'Başka bir operatörden hizmet alıyorum fakat taahhüt süresi dolmadı. Cayma bedelini karşılar mısınız?',
                    '/NetGalaksi cayma bedelinizi karşılamamaktadır.NetGalaksiye üye olmanız halinde mevcut hizmet aldığınız operaörden hizmet aktarımı yapılıyor.Kurulumdan kısa bir süre sonra NetGalaksi internet bağlantısını kullanabilirsiniz.'),
                _buildButton(
                    context,
                    'Ev telefonu olmadan NetGalaksi hizmeti alabilir miyim?',
                    '/Evet, ev telefonunuz olmasa da NetGalaksi hizmetinden faydalanabilirsiniz.'),
                _buildButton(
                    context,
                    'NetGalaksi tarifelerinden kimler yararlanabilir?',
                    '/İsteyen herkes NetGalaksi tarife ve paketlerinden faydalanabilir.'),
                _buildButton(
                    context,
                    'İnternet kurulumu ne kadar sürede gerçekleşir?',
                    '/NetGalaksi kurulumu, altyapıya göre değişkenlik göstermekle birlikte, ortalama 3-7 gündür.'),
                _buildButton(context, 'Statik IP hizmeti alabilir miyim?',
                    '/İstediğiniz zaman 0850 303 9146 numaralı müşteri hizmetlerimizden, internet hattınıza Statik IP tanımlanmasını talep edebilirsiniz.Statik IP ücreti aylık 25 TLdir.'),
                _buildButton(context, 'Müşteri bilgilerim paylaşılacak mı?',
                    '/NetGalaksi, paylaşım izni vermediğiniz sürece bilgileriniz paylaşılmayacaktır.'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, String title, String route) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.pink,
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ),
    );
  }
}
