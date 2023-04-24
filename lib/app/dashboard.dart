import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final int _cardCount = 2;
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    // var localTheme = Theme.of(context);

    // var localization = GalleryLocalizations.of(context)!;
    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('Pukanshu'),
      accountEmail: Text('pukanshu@zuratotech.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('assets/userIcon.png'),
        radius: 100,
      ),
    );
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: const Text('Manage Tags'
              // localization.demoNavigationDrawerToPageOne,
              ),
          leading: const Padding(
            padding: EdgeInsets.zero,
            child: Icon(
              Icons.favorite,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('test'
              // localization.demoNavigationDrawerToPageTwo,
              ),
          leading: const Icon(Icons.comment),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    return Scaffold(
      backgroundColor: const Color(0xFFECF3F4),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Expanded(
            child: RichText(
          text: TextSpan(
            text: 'Good Morning \n',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 12.0,
              fontWeight: FontWeight.w700,
              color: Colors.blue.shade900,
            ),
            children: const <TextSpan>[
              TextSpan(
                  text: 'Pukanshu Kumar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16.0,
                  )),
            ],
          ),
        )),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 15,
                child: ClipOval(
                  child: Image.asset(
                    'assets/userIcon.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _cardCount,
        itemBuilder: (BuildContext context, int index) {
          return _buildCard();
        },
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: drawerItems,
      ),
    );
  }

  Widget _buildCard() {
    return SizedBox(
      // height: 220,

      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          shadowColor: Colors.transparent,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Tag Id: 10010126',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Tag Number: MP04QT0355',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  )),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.qr_code,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: 'Phone :',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' +91 9876543210',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                            color: Color(0xFFEB3B34))),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              RichText(
                                text: const TextSpan(
                                  text: 'Access :',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '03-Apr-2024 ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.0,
                                        )),
                                    TextSpan(
                                      text: 'to ',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    TextSpan(
                                        text: '13-Apr-2024 ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.0,
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14)),
                              minimumSize: const Size(60, 30),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              backgroundColor: const Color(0xFFC9DFF5),
                              foregroundColor: const Color(0xFF056DFA),
                            ),
                            child: const Text(
                              'ACTIVE',
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.zero,
                      // decoration: BoxDecoration(color: Colors.red),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 20,
                                child: Switch(
                                  value: switchValue,
                                  activeColor: const Color(0xFF1DC9A0),
                                  thumbColor:
                                      const MaterialStatePropertyAll<Color>(
                                          Colors.white),
                                  onChanged: (bool value) {
                                    // This is called when the user toggles the switch.
                                    setState(() {
                                      switchValue = value;
                                    });
                                  },
                                ),
                              ),
                              const Text(
                                'Stationed',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              minimumSize: const Size(80, 30),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              backgroundColor: const Color(0xFFDC3545),
                              foregroundColor: const Color(0xFFFFFFFF),
                            ),
                            child: Row(
                              children: const [
                                Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Icon(
                                      Icons.pause,
                                      size: 16,
                                    )),
                                Text(
                                  'Pause',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
