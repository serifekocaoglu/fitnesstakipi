import 'package:flutter/material.dart';

class HeaderInfo extends StatelessWidget {
  final bool isMain;
  final String sectionTitle;

  HeaderInfo({this.isMain, this.sectionTitle});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String month;

    switch (now.month.toInt()) {
      case 1:
        month = 'Ocak';
        break;
      case 2:
        month = 'Şubat';
        break;
      case 3:
        month = 'Mart';
        break;
      case 4:
        month = 'Nisan';
        break;
      case 5:
        month = 'Mayıs';
        break;
      case 6:
        month = 'Haziran';
        break;
      case 7:
        month = 'Temmuz';
        break;
      case 8:
        month = 'Ağustos';
        break;
      case 9:
        month = 'Eylül';
        break;
      case 10:
        month = 'Ekim';
        break;
      case 11:
        month = 'Kasım';
        break;
      case 12:
        month = 'Aralık';
        break;
    }
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          isMain ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hafta 7, Gün 2',
                style: TextStyle(
                  color: Color(0xFFA5A5A5),
                  fontSize: 16.0,
                  fontFamily: 'JosefinSans',
                ),
              ),
              Text(
                'Bugün, ${now.day}, $month, ${now.year}',
                style: TextStyle(fontSize: 24.0),
              ),
            ],
          ) : Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              Text(sectionTitle, style: TextStyle(fontSize: 24.0),),
            ],
          ),
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              image: DecorationImage(
                image: AssetImage('assets/images/serife.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}