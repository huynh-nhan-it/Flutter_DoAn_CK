import 'package:mytopzone/screens/homepage.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (ctx) => HomePage()));
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xff746bc9),
          title: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => HomePage()));
            },
          ),
        ),
        body: Container(
          decoration: BoxDecoration(color: Color.fromARGB(111, 125, 172, 50)),
          padding: EdgeInsets.symmetric(horizontal: 27),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Về chúng tôi",
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xff746bc9),
                ),
              ),
              Image(
                image: AssetImage("images/logo-video.png"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 280,
                width: 360,
                child: Wrap(
                  children: [
                    Text(
                      "© 2018. Công ty cổ phần Thế Giới Di Động. GPDKKD: 0303217354 do sở KH & ĐT TP.HCM cấp ngày 02/01/2007. Địa chỉ: 128 Trần Quang Khải, P. Tân Định, Q.1, TP. Hồ Chí Minh. Điện thoại: 028 38125960.",
                      style: TextStyle(fontSize: 22, color: Colors.black),
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
