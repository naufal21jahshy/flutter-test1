import 'package:flutter/material.dart';

void main() {
  runApp(LayoutDemo());
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String appTitle = 'Indonesia Traveler';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSection(imageUrl: 'assets/images/lake.jpg'),
              TitleSection(
                name: 'Pulau Raja Ampat',
                location: 'Papua Barat Daya, Indonesia',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Kepulauan Raja Ampat yang terletak di ujung barat laut semenanjung kepala burung di Papua, pulau paling timur kepulauan Indonesia. '
                    'Raja Ampat berarti The Four Kings adalah kepulauan yang terdiri lebih dari 1.500 pulau kecil, gundukan pasir, dan beting yang mengelilingi empat pulau utama di Indonesia. '
                    'Empat pulau yang menjadi anggotanya dinamakan menurut empat pulau terbesarnya, yaitu Pulau Waigeo, Pulau Misool, Pulau Salawati, dan Pulau Batanta. '
                    'Kepulauan ini sekarang menjadi tujuan para penyelam yang tertarik akan keindahan pemandangan bawah lautnya. '
                    'Raja Ampat sebagai salah satu pusat destinasi wisata snorkeling, setidaknya 537 spesies karang atau 70% dari spesies karang dunia ada di Raja Ampat. '
                    'Belum lagi terdapat setidaknya 1.320 spesies ikan dan 699 jenis moluska (hewan lunak).',
              ),
              TextSection(
                description:
                    'Kabupaten kepulauan Raja Ampat memiliki total luas 67.379,60 km² dengan rincian luas daratan 7.559,60 km² dan luas lautan 59.820,00 km². '
                    'Secara geografis kepulauan Raja Ampat terletak di bibir Pasifik antara 2°25\' Lintang Utara – 4°25\' Lintang Selatan dan 130° – 132°55\' Bujur Timur, '
                    'dengan luas wilayah sebesar 46.108 Km2 yang didominasi oleh sekitar 89% wilayah lautan.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  final String imageUrl;

  const ImageSection({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageUrl,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}

class TitleSection extends StatelessWidget {
  final String name;
  final String location;

  const TitleSection({Key? key, required this.name, required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            location,
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          child: Text('Book Now'),
        ),
        ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          child: Text('Learn More'),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  final String description;

  const TextSection({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        description,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
