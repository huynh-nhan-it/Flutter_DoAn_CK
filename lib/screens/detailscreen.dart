import 'package:mytopzone/screens/checkout.dart';
import 'package:mytopzone/screens/homepage.dart';
import 'package:mytopzone/widgets/mybutton.dart';
import 'package:mytopzone/widgets/notification_button.dart';

import 'package:flutter/material.dart';
import '../provider/product_provider.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  final String image;
  final String name;
  final double price;
  DetailScreen({this.image, this.name, this.price});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int count = 1;
  ProductProvider productProvider;

  Widget _buildColorProduct({Color color}) {
    return Container(
      height: 40,
      width: 40,
      color: color,
    );
  }

  final TextStyle myStyle = TextStyle(
    fontSize: 17,
  );
  Widget _buildImage() {
    return Center(
      child: Container(
        width: 380,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(13),
            child: Container(
              height: 260,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/" + widget.image + ".png"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNameToDescriptionPart() {
    return Container(
      height: 100,
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(widget.name, style: myStyle, maxLines: 2),
              Text(
                "\$ ${widget.price.toString()}",
                style: TextStyle(
                    color: Color(0xff9b96d6),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text("Khuyến mãi", style: myStyle),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDiscription() {
    return Container(
      height: 170,
      child: Wrap(
        children: <Widget>[
          Text(
            "- Giảm giá 50% gói bảo hành mở rộng thêm 1 năm (chính hãng)  ",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "- Giảm đến 1,500,000đ khi tham gia thu cũ đổi mới (Không áp dụng kèm giảm giá qua VNPAY) ",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "- Phụ kiện chính hãng Apple giảm 30% khi mua kèm iPhone ",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            '- Tặng Phiếu mua hàng giảm 10% Tai nghe từ 1.5 triệu (giảm tối đa 1 triệu)',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  List<bool> sized = [true, false, false, false];
  List<bool> colored = [true, false, false, false];
  int sizeIndex = 0;
  String size;
  void getSize() {
    if (sizeIndex == 0) {
      setState(() {
        size = "32 Gb";
      });
    } else if (sizeIndex == 1) {
      setState(() {
        size = "64 Gb";
      });
    } else if (sizeIndex == 2) {
      setState(() {
        size = "128 Gb";
      });
    } else if (sizeIndex == 3) {
      setState(() {
        size = "1 Tb";
      });
    }
  }

  int colorIndex = 0;
  String color;
  void getColor() {
    if (colorIndex == 0) {
      setState(() {
        color = "Đen";
      });
    } else if (colorIndex == 1) {
      setState(() {
        color = "Vàng";
      });
    } else if (colorIndex == 2) {
      setState(() {
        color = "Đỏ";
      });
    } else if (colorIndex == 3) {
      setState(() {
        color = "Xanh nước";
      });
    }
  }

  Widget _buildSizePart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Bộ nhớ",
          style: myStyle,
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 265,
          child: ToggleButtons(
            children: [
              Text("32 Gb"),
              Text("64 Gb"),
              Text("12 8Gb"),
              Text("1 Tb"),
            ],
            onPressed: (int index) {
              setState(() {
                for (int indexBtn = 0; indexBtn < sized.length; indexBtn++) {
                  if (indexBtn == index) {
                    sized[indexBtn] = true;
                  } else {
                    sized[indexBtn] = false;
                  }
                }
              });
              setState(() {
                sizeIndex = index;
              });
            },
            isSelected: sized,
          ),
        ),
      ],
    );
  }

  Widget _buildColorPart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text(
          "Màu sắc",
          style: myStyle,
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 265,
          child: ToggleButtons(
            fillColor: Color(0xff746bc9),
            renderBorder: false,
            children: [
              _buildColorProduct(color: Colors.black),
              _buildColorProduct(color: Colors.yellow),
              _buildColorProduct(color: Colors.red),
              _buildColorProduct(color: Colors.cyan[300]),
            ],
            onPressed: (int index) {
              setState(() {
                for (int indexBtn = 0; indexBtn < colored.length; indexBtn++) {
                  if (indexBtn == index) {
                    colored[indexBtn] = true;
                  } else {
                    colored[indexBtn] = false;
                  }
                }
              });
              setState(() {
                colorIndex = index;
              });
            },
            isSelected: colored,
          ),
        ),
      ],
    );
  }

  Widget _buildQuentityPart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text(
          "Số lượng",
          style: myStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          width: 130,
          decoration: BoxDecoration(
            color: Color(0xff746bc9),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                onTap: () {
                  setState(() {
                    if (count > 1) {
                      count--;
                    }
                  });
                },
              ),
              Text(
                count.toString(),
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              GestureDetector(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onTap: () {
                  setState(() {
                    count++;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButtonPart() {
    return Container(
      height: 60,
      child: MyButton(
        name: "Thêm vào giỏ hàng",
        onPressed: () {
          getSize();
          getColor();
          productProvider.getCheckOutData(
            image: widget.image,
            color: color,
            size: size,
            name: widget.name,
            price: widget.price,
            quentity: count,
          );
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => CheckOut(),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of<ProductProvider>(context);
    return WillPopScope(
      onWillPop: () async {
        return Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (ctx) => HomePage(),
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:
              Text("Thông tin sản phẩm", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
              // Navigator.of(context).pushReplacement(
              //   MaterialPageRoute(
              //     builder: (ctx) => HomePage(),
              //   ),
              // );
            },
          ),
          actions: <Widget>[
            NotificationButton(),
          ],
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              _buildImage(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildNameToDescriptionPart(),
                    _buildDiscription(),
                    _buildSizePart(),
                    _buildColorPart(),
                    _buildQuentityPart(),
                    SizedBox(
                      height: 15,
                    ),
                    _buildButtonPart(),
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
