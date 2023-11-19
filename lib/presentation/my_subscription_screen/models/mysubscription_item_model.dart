import '../../../core/app_export.dart';

/// This class is used in the [mysubscription_item_widget] screen.
class MysubscriptionItemModel {
  MysubscriptionItemModel({
    this.m,
    this.m1,
    this.t,
    this.w,
    this.t1,
    this.f,
    this.s,
    this.s1,
    this.m2,
    this.amulGoldMilk,
    this.measurement,
    this.price,
    this.qtyTwo,
    this.id,
  }) {
    m = m ?? Rx(ImageConstant.imgCardOnprimarycontainer119x396);
    m1 = m1 ?? Rx("M ");
    t = t ?? Rx("T");
    w = w ?? Rx("W");
    t1 = t1 ?? Rx("T");
    f = f ?? Rx("F ");
    s = s ?? Rx("S ");
    s1 = s1 ?? Rx("S ");
    m2 = m2 ?? Rx(ImageConstant.imgImage63x65);
    amulGoldMilk = amulGoldMilk ?? Rx("Amul Gold Milk");
    measurement = measurement ?? Rx("500 ml");
    price = price ?? Rx("2");
    qtyTwo = qtyTwo ?? Rx("Qty : 2");
    id = id ?? Rx("");
  }

  Rx<String>? m;

  Rx<String>? m1;

  Rx<String>? t;

  Rx<String>? w;

  Rx<String>? t1;

  Rx<String>? f;

  Rx<String>? s;

  Rx<String>? s1;

  Rx<String>? m2;

  Rx<String>? amulGoldMilk;

  Rx<String>? measurement;

  Rx<String>? price;

  Rx<String>? qtyTwo;

  Rx<String>? id;
}
