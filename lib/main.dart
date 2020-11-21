// Author: https://sohelrana.net

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bKash UI',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(82.0),
        child: AppBarWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.qr_code, color: Colors.pink, size: 40.0),
        tooltip: 'Increment',
        elevation: 2.0,
        backgroundColor: Colors.white,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBarWidget(),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(12.0),
            margin: EdgeInsets.only(bottom: 12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    MenuWidget(
                        title: 'Send Money', image: 'assets/send_money.jpg'),
                    MenuWidget(
                        title: 'Recharge', image: 'assets/mobile_recharge.jpg'),
                    MenuWidget(title: 'Cash Out', image: 'assets/cash_out.jpg'),
                    MenuWidget(
                        title: 'Make Payment',
                        image: 'assets/make_payment.jpg'),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    MenuWidget(
                        title: 'Add Money', image: 'assets/add_money.jpg'),
                    MenuWidget(title: 'Pay Bill', image: 'assets/pay_bill.jpg'),
                    MenuWidget(title: 'Tickets', image: 'assets/tickets.jpg'),
                    MenuWidget(title: 'More', image: 'assets/more.jpg'),
                  ],
                ),
              ],
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
            child: Container(
              width: Size.infinite.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('My bKash'),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardWidget(
                            title: 'Sohel Rana',
                            image: 'assets/mobile_recharge.jpg'),
                        CardWidget(
                            title: 'Akash', image: 'assets/make_payment.jpg'),
                        CardWidget(
                            title: 'Internet', image: 'assets/pay_bill.jpg'),
                        CardWidget(
                            title: 'Card', image: 'assets/add_money.jpg'),
                        CardWidget(
                            title: 'Sohel Rana',
                            image: 'assets/mobile_recharge.jpg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
              color: Colors.white,
              margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
              child: Container(
                width: Size.infinite.width,
                child: Image.asset('assets/banner.jpg'),
              )),
          Card(
            color: Colors.white,
            margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
            child: Container(
              width: Size.infinite.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Suggestions'),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardWidget(
                            title: 'Card bill', image: 'assets/card_bill.jpg'),
                        CardWidget(title: 'BTCL', image: 'assets/btcl.jpg'),
                        CardWidget(
                            title: 'CoronaBD', image: 'assets/coronabd.jpg'),
                        CardWidget(
                            title: 'Donation', image: 'assets/donation.jpg'),
                        CardWidget(
                            title: 'MetLife', image: 'assets/metlife.jpg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
            child: Container(
              width: Size.infinite.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Offters'),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardWidget(title: 'Daraz', image: 'assets/daraz.jpg'),
                        CardWidget(title: 'Airtel', image: 'assets/airtel.jpg'),
                        CardWidget(
                            title: 'Ajkerdeal', image: 'assets/ajkerdeal.jpg'),
                        CardWidget(
                            title: 'Grameenphone',
                            image: 'assets/grameenphone.jpg'),
                        CardWidget(title: 'Robi', image: 'assets/robi.jpg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 12.0),
                child: CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Colors.grey[200],
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
              SizedBox(width: 14.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.0),
                  Text('Sohel Rana',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0)),
                  SizedBox(height: 6.0),
                  Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            width: 25,
                            height: 25,
                            padding: EdgeInsets.all(2.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.pink,
                              backgroundImage:
                                  AssetImage('assets/currency.png'),
                            ),
                          ),
                        ),
                        Text('Tab for Balance',
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600))
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 12.0, right: 12.0),
          child: Container(
              width: 50, height: 50, child: Image.asset('assets/fly.png')),
        )
      ],
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.pink,
      notchMargin: 6.0,
      shape: CircularNotchedRectangle(),
      child: Container(
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                // minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.home_outlined, color: Colors.white, size: 30.0),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Scan QR',
                  style: TextStyle(color: Colors.white60),
                ),
              ),
              MaterialButton(
                // minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.forward_to_inbox,
                        color: Colors.white60, size: 30.0),
                    Text(
                      'Inbox',
                      style: TextStyle(color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key key,
    @required this.title,
    @required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 4 - 6,
      height: 100,
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(image),
          SizedBox(height: 5.0),
          Text(title,
              style: TextStyle(color: Colors.black45),
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key key,
    @required this.title,
    @required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 100,
      color: Colors.white,
      child: Column(
        children: [
          Container(height: 64, child: Image.asset(image)),
          SizedBox(height: 5.0),
          Text(title,
              style: TextStyle(color: Colors.black45),
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
