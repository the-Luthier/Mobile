// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sıkça Sorulan Sorular"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
                const Text("Back"),
              ],
            ),
            const SizedBox(height: 16.0),
            const AccordionWidget(
                title: 'Fiber altyapısı kullanıyor musunuz?',
                content:
                    '/Evet, NetGalaksi altyapısıyla sunulan Fiber İnternet, üst düzey bağlantı hızını, güvenliğini ve kalitesini kullanıcılarımızla buluşturuyor.'),
            const SizedBox(height: 16.0),
            const AccordionWidget(
                title:
                    "'Başka bir operatörden hizmet alıyorum fakat taahhüt süresi dolmadı. Cayma bedelini karşılar mısınız?",
                content:
                    "/NetGalaksi cayma bedelinizi karşılamamaktadır.NetGalaksiye üye olmanız halinde mevcut hizmet aldığınız operaörden hizmet aktarımı yapılıyor.Kurulumdan kısa bir süre sonra NetGalaksi internet bağlantısını kullanabilirsiniz."),
            const SizedBox(height: 16.0),
            const AccordionWidget(
                title: "Ev telefonu olmadan NetGalaksi hizmeti alabilir miyim?",
                content:
                    "/Evet, ev telefonunuz olmasa da NetGalaksi hizmetinden faydalanabilirsiniz."),
            const SizedBox(height: 16.0),
            const AccordionWidget(
                title: "NetGalaksi tarifelerinden kimler yararlanabilir?",
                content:
                    "/İsteyen herkes NetGalaksi tarife ve paketlerinden faydalanabilir."),
            const SizedBox(height: 16.0),
            const AccordionWidget(
                title: "İnternet kurulumu ne kadar sürede gerçekleşir?",
                content:
                    "/NetGalaksi kurulumu, altyapıya göre değişkenlik göstermekle birlikte, ortalama 3-7 gündür."),
            const SizedBox(height: 16.0),
            const AccordionWidget(
                title: "Statik IP hizmeti alabilir miyim?",
                content:
                    "/İstediğiniz zaman 0850 303 9146 numaralı müşteri hizmetlerimizden, internet hattınıza Statik IP tanımlanmasını talep edebilirsiniz.Statik IP ücreti aylık 25 TLdir."),
            const SizedBox(height: 16.0),
            const AccordionWidget(
                title: "Müşteri bilgilerim paylaşılacak mı?",
                content:
                    "/NetGalaksi, paylaşım izni vermediğiniz sürece bilgileriniz paylaşılmayacaktır."),
          ],
        ),
      ),
    );
  }
}

class AccordionWidget extends StatefulWidget {
  final String title;
  final String content;

  const AccordionWidget(
      {super.key, required this.title, required this.content});

  @override
  // ignore: library_private_types_in_public_api
  _AccordionWidgetState createState() => _AccordionWidgetState();
}

class _AccordionWidgetState extends State<AccordionWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Row(
            children: [
              Expanded(
                child: Text(
                  widget.title,
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
              Icon(
                _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                size: 30.0,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8.0),
        _isExpanded
            ? Text(
                widget.content,
                style: const TextStyle(fontSize: 16.0),
              )
            : Container(),
      ],
    );
  }
}
