import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slideshow/screens/silver_home_screen.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/';
  
  static const Color primaryColor = Color(0xFF003264);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 300,
            width: double.infinity,
            child: Image.asset(
              'assets/images/hotel.jpg',
              fit: BoxFit.cover
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(15, 260, 15, 0),
                  padding: const EdgeInsets.only(top: 15),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Control de alimentos',
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text('III CONGRESO APCE'),
                      const SizedBox(height: 30),
                      SvgPicture.asset('assets/svgs/no-data.svg'),
                      const SizedBox(height: 30),
                      const Text(
                        'Sin registro',
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      const Text('El evento no tiene un control generado'),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(SilverHomeScree.routeName);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.minPositive, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Text('GENERAR CONTROL'), // <-- Text
                            SizedBox(width: 5),
                            Icon( Icons.arrow_upward ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text('Regresar al listado de eventos'),
                    ],
                  ),
                )
              )
            ],
          )
        ],
      ),
    );
  }
}