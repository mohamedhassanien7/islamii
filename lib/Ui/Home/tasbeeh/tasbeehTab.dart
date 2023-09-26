import 'package:flutter/material.dart';

class TasbeehTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      color: Colors.transparent,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: size.height * .3,
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset('assets/images/head of seb7a.png'),
                  left: size.width * .25,
                ),
                InkWell(
                  onTap: () {},
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Positioned(
                    child: Image.asset(
                      'assets/images/body of seb7a.png',
                    ),
                    top: 80,
                    left: size.width * .22,
                    right: size.width * .22,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
