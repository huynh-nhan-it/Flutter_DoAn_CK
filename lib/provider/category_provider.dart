import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mytopzone/model/categoryicon.dart';
import 'package:mytopzone/model/product.dart';
import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  List<Product> shirt = [];
  Product shirtData;
  List<Product> dress = [];
  Product dressData;
  List<Product> shoes = [];
  Product shoesData;
  List<Product> pant = [];
  Product pantData;
  List<Product> tie = [];
  Product tieData;
  List<CategoryIcon> dressIcon = [];
  CategoryIcon dressiconData;

  Future<void> getDressIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot dressSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("9itqvMZSA5AmfohICIF6")
        .collection("dress")
        .limit(50)
        .get();
    dressSnapShot.docs.forEach(
      (element) {
        dressiconData = CategoryIcon(image: element["image"]);
        newList.add(dressiconData);
      },
    );
    dressIcon = newList;
  }

  List<CategoryIcon> get getDressIcon {
    return dressIcon;
  }

  List<CategoryIcon> shirtIcon = [];
  CategoryIcon shirticonData;
  Future<void> getShirtIcon() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot shirtSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("9itqvMZSA5AmfohICIF6")
        .collection("shirt")
        .limit(50)
        .get();
    shirtSnapShot.docs.forEach(
      (element) {
        shirticonData = CategoryIcon(image: element["image"]);
        newList.add(shirticonData);
      },
    );
    shirtIcon = newList;
  }

  List<CategoryIcon> get getShirtIconData {
    return shirtIcon;
  }

  List<CategoryIcon> shoesIcon = [];
  CategoryIcon shoesiconData;
  Future<void> getshoesIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot shoesSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("9itqvMZSA5AmfohICIF6")
        .collection("shoe")
        .limit(50)
        .get();
    shoesSnapShot.docs.forEach(
      (element) {
        shoesiconData = CategoryIcon(image: element["image"]);
        newList.add(shoesiconData);
      },
    );
    shoesIcon = newList;
  }

  List<CategoryIcon> get getShoeIcon {
    return shoesIcon;
  }

  List<CategoryIcon> pantIcon = [];
  CategoryIcon panticonData;
  Future<void> getPantIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot pantSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("9itqvMZSA5AmfohICIF6")
        .collection("pant")
        .limit(50)
        .get();
    pantSnapShot.docs.forEach(
      (element) {
        panticonData = CategoryIcon(image: element["image"]);
        newList.add(panticonData);
      },
    );
    pantIcon = newList;
  }

  List<CategoryIcon> get getPantIcon {
    return pantIcon;
  }

  List<CategoryIcon> tieIcon = [];
  CategoryIcon tieIconData;
  Future<void> getTieIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot tieSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("9itqvMZSA5AmfohICIF6")
        .collection("tie")
        .limit(50)
        .get();
    tieSnapShot.docs.forEach(
      (element) {
        tieIconData = CategoryIcon(image: element["image"]);
        newList.add(tieIconData);
      },
    );
    tieIcon = newList;
  }

  List<CategoryIcon> get getTieIcon {
    return tieIcon;
  }

  Future<void> getShirtData() async {
    List<Product> newList = [];
    QuerySnapshot shirtSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("SWBgq8mEQChcUA41vYzs")
        .collection("shirt")
        .limit(50)
        .get();
    shirtSnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element["image"],
            name: element["name"],
            price: element["price"]);
        newList.add(shirtData);
      },
    );
    shirt = newList;
  }

  List<Product> get getShirtList {
    return shirt;
  }

  Future<void> getDressData() async {
    List<Product> newList = [];
    QuerySnapshot shirtSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("SWBgq8mEQChcUA41vYzs")
        .collection("dress")
        .limit(50)
        .get();
    shirtSnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element["image"],
            name: element["name"],
            price: element["price"]);
        newList.add(shirtData);
      },
    );
    dress = newList;
  }

  List<Product> get getDressList {
    return dress;
  }

  Future<void> getShoesData() async {
    List<Product> newList = [];
    QuerySnapshot shirtSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("SWBgq8mEQChcUA41vYzs")
        .collection("shoes")
        .limit(50)
        .get();
    shirtSnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element["image"],
            name: element["name"],
            price: element["price"]);
        newList.add(shirtData);
      },
    );
    shoes = newList;
  }

  List<Product> get getshoesList {
    return shoes;
  }

  Future<void> getPantData() async {
    List<Product> newList = [];
    QuerySnapshot shirtSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("SWBgq8mEQChcUA41vYzs")
        .collection("pant")
        .limit(50)
        .get();
    shirtSnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element["image"],
            name: element["name"],
            price: element["price"]);
        newList.add(shirtData);
      },
    );
    pant = newList;
  }

  List<Product> get getPantList {
    return pant;
  }

  Future<void> getTieData() async {
    List<Product> newList = [];
    QuerySnapshot shirtSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("SWBgq8mEQChcUA41vYzs")
        .collection("tie")
        .limit(50)
        .get();
    shirtSnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element["image"],
            name: element["name"],
            price: element["price"]);
        newList.add(shirtData);
      },
    );
    tie = newList;
  }

  List<Product> get getTieList {
    return tie;
  }

  List<Product> searchList;
  void getSearchList({List<Product> list}) {
    searchList = list;
  }

  List<Product> searchCategoryList(String query) {
    List<Product> searchShirt = searchList.where((element) {
      return element.name.toUpperCase().contains(query) ||
          element.name.toLowerCase().contains(query);
    }).toList();
    return searchShirt;
  }
}
