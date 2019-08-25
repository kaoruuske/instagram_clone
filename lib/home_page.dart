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
              SizedBox(
                  width: 280,
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(1.0)),
                          SizedBox(
                            width: 80.0,
                            height: 80.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://lh3.googleusercontent.com/-9eWdz36FDAQ/XU2aU3KltXI/AAAAAAAAfm0/gow85Vs3W5QLs9_hbnuFpJGOj2lKPmPGACEwYBhgL/h120/IMG_7716.JPG'),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Text(
                            'Email Address',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Name'),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network(
                                    'https://lh3.googleusercontent.com/-YDJoeKDgbeE/XU2aU22WOqI/AAAAAAAAfm0/onKozJtVnioq2ZGOtwBkRgQp8hAwHsraQCEwYBhgL/h120/IMG_7717.JPG',
                                    fit: BoxFit.cover),
                              ),
                              Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network(
                                    'https://lh3.googleusercontent.com/-NdJ-YQjEXrM/XU2aUkiNGBI/AAAAAAAAfm0/fEd7odHferQ0NYggxW9GaQoIqN5BC3rEwCEwYBhgL/h120/IMG_7715.JPG',
                                    fit: BoxFit.cover),
                              ),
                              Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network(
                                    'https://lh3.googleusercontent.com/-nJ6fRWcRzb4/XU7ieeojpFI/AAAAAAAAfoY/r2_atWEXWNIAg10Pe9HrAjgDK5IAwPQNQCEwYBhgL/h120/IMG_7724.JPG',
                                    fit: BoxFit.cover),
                              )
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(4.0)),
                          Text('Facebook Friends'),
                          Padding(padding: EdgeInsets.all(4.0)),
                          RaisedButton(
                              child: Text('Follow'),
                              color: Colors.blueAccent,
                              textColor: Colors.white,
                              onPressed: () {}),
                          Padding(padding: EdgeInsets.all(4.0)),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
