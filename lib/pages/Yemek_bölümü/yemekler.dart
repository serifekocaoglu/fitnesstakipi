import 'package:flutter/material.dart';
import 'package:flutter_fitnestakip/pages/Yemek_b%C3%B6l%C3%BCm%C3%BC/yemek_kart%C4%B1.dart';
import 'package:flutter_fitnestakip/pages/header_info.dart';

class MealsPage extends StatefulWidget {
  static String tag = 'meals-page';
  @override
  _MealsPageState createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAEAEA),
      body: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: HeaderInfo(
              isMain: false,
              sectionTitle: 'Yemekler',
            ),
          ),
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 140.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF26CA01),
                      Color(0xFF99DE0B),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: MealsHeader(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      MealsCard(
                        mealIndex: 1,
                      ),
                      MealsCard(
                        mealIndex: 2,
                      ),
                      MealsCard(
                        mealIndex: 3,
                      ),
                      MealsCard(
                        mealIndex: 4,
                      ),
                      MealsCard(
                        mealIndex: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: (MediaQuery.of(context).size.height / 3.33) / 4,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Beslenme',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFFEAEAEA),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 16.0, right: 16.0, bottom: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Elma',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            _mealNutritions('95', 'kcal'),
                            _mealNutritions('0 gm', 'Şişman'),
                            _mealNutritions('0 gm', 'Protein'),
                            _mealNutritions('14 gm', 'Karbonhidrat'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 16.0, right: 16.0, bottom: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Beyaz Ekmek',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            _mealNutritions('70', 'kcal'),
                            _mealNutritions('1 gm', 'Şişman'),
                            _mealNutritions('4 gm', 'Protein'),
                            _mealNutritions('11.6 gm', 'Karbonhidrat'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFFEAEAEA),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 16.0, right: 16.0, bottom: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Yumurta',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            _mealNutritions('155', 'kcal'),
                            _mealNutritions('11 gm', 'Şişman'),
                            _mealNutritions('13 gm', 'Protein'),
                            _mealNutritions('1.1 gm', 'Karbonhidrat'),
                          ],
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
    );
  }

  Widget _mealNutritions(String title, String subTitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: TextStyle(color: Color(0xFF1FC900))),
        Text(subTitle, style: TextStyle(color: Colors.grey, fontSize: 12.0)),
      ],
    );
  }
}

class MealsHeader extends StatelessWidget {
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hafta 7, Gün 2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontFamily: 'JosefinSans',
              ),
            ),
            Text(
              'Bugün, ${now.day}nd, $month, ${now.year}',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              '02:19:06',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            Text(
              'Sonraki Yemek İçin',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontFamily: 'JosefinSans',
              ),
            ),
          ],
        ),
      ],
    );
  }
}