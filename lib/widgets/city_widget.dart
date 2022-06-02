import 'package:flutter/material.dart';
import 'package:am2_practice_3/model/city.dart';
import 'package:am2_practice_3/Screens/citys_screen.dart';

class CityItemWidget extends StatelessWidget {
  final City city;
  const CityItemWidget({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CityScreen(city: city)));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                city.name + ' - ' + city.poblacion.toString(),
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(city.description.substring(0, 60) + '...'),
              const SizedBox(height: 10.0),
              Text('F-M: ' + city.foundationDate.toString().substring(0, 16))
            ],
          ),
        ));
  }
}
