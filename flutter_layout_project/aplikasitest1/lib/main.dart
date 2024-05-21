import 'dart:ffi';
import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(LayoutDemo());
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    conts string appTitle ='Indonesia Traveler'
    return MaterialApp(
      title:apptitle, 
      home: Scaffold(
        appBar: AppBar(
          title:const Text('apptitle'),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection (
                Image:'image/lake.jpg',

              TittleSection
                name:'Pulau Raja Ampat'
                Location:'Papua Barat Daya,Indonesia'

                ButtonSection()
                Textsection(
                  description:
                   'Kepulauan Raja Ampat yang terletak di ujung barat laut semenanjung kepala burung di Papua,pulau paling timur kepulauan indonesia..'
                   'Raja Ampat berarti The Four Kings adalah kepulauan yang terdiri lebih dari 1.500 pulau kecil,gundukan pasir,dan beting yang mengelilingi empat pulau utama di indonesia.'
                   'Empat  pulau yang menjadi anggotanya dinamakan menurut empat pulau terbesarnya,yaitu Pulau Waigeo,Pulau Misool,Pulau Salawati,dan Pulau Batanta.'
                   'Kepulauan ini sekarang menjadi tujuan para penyelam yang tertarik akan keindahan pemandangan bawah lautnya.'
                   'Raja Ampat sebagai salah satu pusat destinasi wisata snorkeling,setidaknya 537 spesies karang atau 70% dari spesies karang dunia ada di raja ampat.''
                   'Belum lagi terdapat setidaknya 1.320 spesies ikan dan 699 jenis moluska (hewan lunak)'.
                
                )//Textsection
                Textsection)
                  description:
                  'Kabupaten kepulauan Raja Ampat memiliki total luas 67.379,60 km² dengan rincian luas daratan 7.559,60 km² dan luas lautan 59.820,00 km².'
                  'Secara geografis kepulauan Raja Ampat terletak di bibir Pasifik antara 2°25'Lintang Utara – 4°25'Lintang Selatan dan 130° – 132°55' Bujur Timur, dengan luas wilayah sebesar 46.108 Km2 yang didominasi oleh sekitar 89% wilayah lautan.'
                  'Gugusan karang menjadi ciri khas utama permukaan Raja Ampat Pemandangan yang akan di jumpai ketika kita menjelajah di Raja Ampat. Raja Ampat adalah surga tersembunyi di timur Indonesia Gugusan pulau cantik yang bernama Piaynemo. Perairan Raja Ampat yang relatif tenang dan bersahabat.'
              SizedBox(height: 20), // Spacer
              Text(
                'Negara dengan kekayaan alam dan budaya yang luar biasa.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
