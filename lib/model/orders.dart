
import 'package:food_delivery/model/request.dart';

class  Orders {
  final List<UserRequests> requests;
  final String oUser;
  final String email;
  final int phone;
  final String uAddress;
  final DateTime uDate;
  final DateTime uTime;
  final int uTotalRequests;
  final double uTotalPrice;
  final double lat,lan;
  final String deliveryMethod;


   Orders(
      {
        required this.deliveryMethod,
        required this.requests,
        required this.oUser,
        required this.email,
        required this.phone,
        required this.uAddress,
        required this.uDate,
        required this.uTime,
        required this.uTotalRequests,
        required this.uTotalPrice,
        required this.lat,
        required  this.lan
      }
      );

  Map<String, dynamic> toMap() {
    return {
      "delivery_method":deliveryMethod,
      'u_user': oUser,
      'email': email,
      'phone': phone,
      'u_date': uDate,
      'u_address': uAddress,
      'u_time': uTime,
      'total_requests': uTotalRequests,
      "total_price":uTotalPrice,
      "lan": lan,
      'lat':lat,
      'requests':requests.map((e) => e.toMap()).toList(),
      //List<InventoryProduct>.toMap['inventoryProduct'])
      //
      // inventoryProduct.map((i)=>
      //        i.()).toList(),
    };
  }

  factory Orders.fromMap(Map<String, dynamic> map) {
    return Orders(
      deliveryMethod: map['delivery_method'],
      oUser: map['u_user'],
      email: map['email'],
      phone: map['phone'],
      uDate: map['u_date'],
      uAddress: map['u_address'],
      uTime: map['u_time'],
      uTotalRequests: map['total_requests'],
      uTotalPrice: map['total_price'],
      lat:map["lat"],
      lan:map["lan"],
      requests: (map['requests'] as List)
          .map((data) => UserRequests.fromMap(data)).toList(),

    );
  }
}

List <Orders> userOrders =[];

void adduserOrder(
    {
      required List<UserRequests> requests,
      required String oUser,
      required String email,
      required int phone,
      required String uAddress,
      required DateTime uDate,
      required DateTime uTime,
      required int uTotalRequests,
      required double uTotalPrice,
      required double lat,
      required  double lan,
      required String deliveryMethod,

    })
{
  final newDetails= Orders(
    deliveryMethod: deliveryMethod,
    requests:requests,
    oUser: oUser,
 email:email,
  phone: phone,
  uAddress:   uAddress,
 uDate:  uDate,
   uTime:  uTime,
  uTotalRequests: uTotalRequests,
    uTotalPrice:uTotalPrice,
    lan: lan,
    lat: lat,


  );

   userOrders.add(newDetails);
}