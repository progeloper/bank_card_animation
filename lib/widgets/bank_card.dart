import 'package:bank_card_animation/screens/payments_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BankCard extends StatefulWidget {
  const BankCard({Key? key}) : super(key: key);

  @override
  State<BankCard> createState() => _BankCardState();
}

class _BankCardState extends State<BankCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;


  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    _animation = Tween<Offset>(begin: const Offset(0, 0), end: const Offset(0, 5))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear))
      ..addListener(() {
        setState(() {

        });
        if(_controller.isCompleted){
          _controller.repeat();
          setState(() {
          });
        }
      });
  }


  @override
  Widget build(BuildContext context) {
    const double height = 200.0;

    return GestureDetector(

      onLongPress: (){
        _controller.forward();
      },
      child: Transform.translate(
        offset: _animation.value,
        child: Container(
          height: height,
          width: height * 1.6,
          constraints: const BoxConstraints(
            maxWidth: height * 1.6,
            maxHeight: height,
          ),
          decoration: BoxDecoration(
            color: Colors.blueAccent[400],
            borderRadius: BorderRadius.circular(15),
            border: const Border(
              top: BorderSide(color: Colors.grey),
              right: BorderSide(color: Colors.grey),
              left: BorderSide(color: Colors.grey),
              bottom: BorderSide(color: Colors.grey),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[800]!,
                blurRadius: 15,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SvgPicture.asset(
                      'assets/bank-logo.svg',
                      fit: BoxFit.scaleDown,
                      width: 40,
                      colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'ELITE',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'debit',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w100,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 5,
                width: double.infinity,
                constraints: BoxConstraints(
                  maxHeight: 5,
                ),
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.only(top: 4, right: 16, left: 16, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SvgPicture.asset(
                      'assets/card-chip.svg',
                      fit: BoxFit.scaleDown,
                      width: 40,
                      colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    ),
                    Icon(
                      Icons.nfc,
                      color: Colors.white,
                      size: 40,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      '1234',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 13,
                        fontFamily: 'Farrington',
                        letterSpacing: 2,
                      ),
                    ),
                    Text(
                      '4567',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 13,
                          fontFamily: 'Farrington',
                          letterSpacing: 2),
                    ),
                    Text(
                      '8901',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 13,
                          fontFamily: 'Farrington',
                          letterSpacing: 2),
                    ),
                    Text(
                      '2345',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 13,
                          fontFamily: 'Farrington',
                          letterSpacing: 2),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 120),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'VALID',
                          style: TextStyle(
                            fontSize: 6,
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Text(
                          'THRU',
                          style: TextStyle(
                            fontSize: 6,
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 5,),
                    const Text(
                      '01/26',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 10,
                          fontFamily: 'Farrington',
                          letterSpacing: 2),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'JOHN',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 10,
                          fontFamily: 'Farrington',
                          letterSpacing: 2),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'A.',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 10,
                          fontFamily: 'Farrington',
                          letterSpacing: 2),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'DOE',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 10,
                          fontFamily: 'Farrington',
                          letterSpacing: 2),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
