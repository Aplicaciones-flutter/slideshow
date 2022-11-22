import 'package:flutter/material.dart';

class SilverHomeScree extends StatelessWidget {
  const SilverHomeScree({super.key});
  static const routeName = '/silver';
  static const Color primaryColor = Color(0xFF003264);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // bottom: PreferredSize(
            //   child: Container(),
            //   preferredSize: Size(0, 20),
            // ),
            pinned: false,
            expandedHeight: 250,
            flexibleSpace: Stack(
              children:  <Widget>[
                const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://images.pexels.com/photos/62389/pexels-photo-62389.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
                  )
                ),
                Positioned(
                  bottom: -1,
                  left: 15,
                  right: 15,
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20)
                      )
                    ),
                    child: const Center(
                      child: Text(
                        'Control de Alimentos',
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    )
                  )
                ),
              ],
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}