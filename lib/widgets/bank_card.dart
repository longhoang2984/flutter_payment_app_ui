import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  final BankCardModel card;
  BankCard({this.card});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 150.0,
      width: 252.0,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(card.bgAsset), fit: BoxFit.cover),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 16.0),
                    child: Text(
                      'BALANCE',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      '\$ ${card.balance}',
                      style: TextStyle(
                          color: Colors.white,
//                        fontSize: 10.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    card.accountNumber,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'VALID\nTHRU',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: card.bgAsset == 'images/bg_purple_card.png' || card.bgAsset == 'images/bg_blue_card.png' ? Colors.grey : Colors.black,
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          card.validDate,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 4.0),
                  child: Text(
                    card.name,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: card.bgAsset == 'images/bg_purple_card.png' || card.bgAsset == 'images/bg_blue_card.png' ? Colors.grey : Color(0xFF253C70),
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}

class SmallBankCard extends StatelessWidget {
  final BankCardModel card;
  final double screenWidth;
  SmallBankCard({this.card, this.screenWidth});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final bool isLargeScreen = screenWidth > 320;
    final double topPadding = isLargeScreen ? 14.0 : 24.0;
    final EdgeInsets inset = EdgeInsets.only(left: 16.0, top: topPadding);
    return Container(
//      height: 88.0,
//      width: 150.0,
      decoration: BoxDecoration(
        image:
        DecorationImage(image: AssetImage(card.bgAsset), fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: inset,
                          child: Text(
                            card.accountNumber,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:  isLargeScreen ? 10.0 : 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 2.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'VALID\nTHRU',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: card.bgAsset == 'images/bg_purple_card.png' || card.bgAsset == 'images/bg_blue_card.png' ? Colors.grey : Colors.black,
                                    fontSize: isLargeScreen ? 6.0 : 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  card.validDate,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: isLargeScreen ? 10.0 : 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 2.0),
                          child: Text(
                            card.name,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: card.bgAsset == 'images/bg_purple_card.png' || card.bgAsset == 'images/bg_blue_card.png' ? Colors.grey : Color(0xFF253C70),
                                fontSize: isLargeScreen ? 9.0 : 13.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              child: Image.asset('images/ico_delete_card.png'),
            ),
          ),
        ],
      )
    );
  }
}

class BankCardModel {
  final String bgAsset;
  final int balance;
  final String name;
  final String validDate;
  final String accountNumber;
  BankCardModel(this.bgAsset, this.name, this.accountNumber, this.validDate,
      this.balance);
}
