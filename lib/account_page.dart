import 'package:flutter/material.dart';

class Accountpage extends StatefulWidget {
  @override
  _AccountpageState createState() => _AccountpageState();
}

class _AccountpageState extends State<Accountpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {},
        )
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    child: SizedBox(
                      width: 80.0,
                      height: 80.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://lh3.googleusercontent.com/-wpr1l82F28o/XQS1L9oZ6AI/AAAAAAAAdzE/dDWZ_zRSRGEpm2ccImMvqIApWpcFY2WxQCEwYBhgL/w105-h140-p/IMG_6555.JPG'),
                      ),
                    ),
                  ),
                  Container(
                      width: 80.0,
                      height: 80.0,
                      alignment: Alignment.bottomRight,
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 28.0,
                            height: 28.0,
                            child: FloatingActionButton(
                              onPressed: null,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 25.0,
                            height: 25.0,
                            child: FloatingActionButton(
                              onPressed: null,
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.add),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              Text(
                '이름',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Text(
            '0\n게시물',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),
          ),
          Text(
            '0\n팔로워',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),
          ),
          Text('0\n팔로잉',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0))
        ],
      ),
    );
  }
}
