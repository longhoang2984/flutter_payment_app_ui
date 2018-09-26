import 'package:flutter/material.dart';
import 'package:payment_app/widgets/bank_card.dart';

class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  final List<BankCardModel> cards = [
    BankCardModel('images/bg_red_card.png', 'Hoang Cuu Long',
        '4221 5168 7464 2283', '08/20', 10000000),
    BankCardModel('images/bg_blue_circle_card.png', 'Hoang Cuu Long',
        '4221 5168 7464 2283', '08/20', 10000000),
    BankCardModel('images/bg_purple_card.png', 'Hoang Cuu Long',
        '4221 5168 7464 2283', '08/20', 10000000),
    BankCardModel('images/bg_blue_card.png', 'Hoang Cuu Long',
        '4221 5168 7464 2283', '08/20', 10000000),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 16.0, right: 16.0),
              child: Text(
                'My Profile',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
              ),
            ),
            Container(
              child: Expanded(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return Container(
                          margin: EdgeInsets.only(left: 16.0, right: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 8.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                'Long Hoang',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            GestureDetector(
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 4.0),
                                                    child: Text('Edit'),
                                                  ),
                                                  Icon(
                                                    Icons.edit,
                                                    size: 10.0,
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                'Phone: 0937110938',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            GestureDetector(
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 4.0),
                                                    child: Text('Edit'),
                                                  ),
                                                  Icon(
                                                    Icons.edit,
                                                    size: 10.0,
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                'Email: longhoang.2984@gmail.com',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            GestureDetector(
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 4.0),
                                                    child: Text('Edit'),
                                                  ),
                                                  Icon(
                                                    Icons.edit,
                                                    size: 10.0,
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      } else {
                        return _userBankCardsWidget();
                      }
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _userBankCardsWidget() {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0),
//      height: 400.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.account_balance),
                  ),
                  Text('My Bank Accounts',
                  style: TextStyle(fontWeight: FontWeight.w700),)
                ],
              )
          ),
//          GridView.builder(
//            physics: ScrollPhysics(),
//              shrinkWrap: true,
//              itemCount: cards.length,
//              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
//                  crossAxisCount: 2),
//              itemBuilder: (BuildContext context, int index) {
//                return _getBankCard(index);
//              }),
          GridView.count(crossAxisCount: size.width > 320 ? 2 : 1,
          physics: ScrollPhysics(),
          shrinkWrap: true,
          childAspectRatio: (152 / 92),
            controller: new ScrollController(keepScrollOffset: false),
          children: List.generate(cards.length, (index) {
            return _getBankCard(index);
          }),),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            child: GestureDetector(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(16.0),
                height: 50.0,
                decoration: BoxDecoration(
                    color: Color(0xFF65D5E3),
                    borderRadius: BorderRadius.all(Radius.circular(11.0))),
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  'SHARE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _getBankCard(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SmallBankCard(card: cards[index], screenWidth: MediaQuery.of(context).size.width,),
    );
  }
}
