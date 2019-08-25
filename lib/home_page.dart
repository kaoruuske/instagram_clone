import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram Clon',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Instagram에 오신 것을 환영합니다.',
                style: TextStyle(fontSize: 24.0),
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              Text('사진과 동영상을 보려면 팔로우하세요.'),
              Padding(padding: EdgeInsets.all(16.0)),
              Card(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 80.0,
                      height: 80.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(''),
                      ),
                    ),
                    Text('Email Address'),
                    Text('Name'),
                    RaisedButton(
                        child: Text('팔로우'),
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        onPressed: null)
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
