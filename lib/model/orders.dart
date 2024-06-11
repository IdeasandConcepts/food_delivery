
import 'package:food_delivery/model/users.dart';
import 'package:food_delivery/model/request.dart';


class  Orders {
  final String user;

  final String profileImage;
  final String step;
  final String deliveryTime;
  final double id;
  final double orderNumber;
  final String status;
  final String acceptedTime;
  final List<UserRequests> requests;
  final String paymentMethod;
  final String uDate;
  final String uTime;
  //final int uTotalRequests;
  final double uTotalPrice;
  final double lat,lan;
  final String deliveryMethod;


   Orders(
      {
        required this.profileImage,
        required this.user,
        required this.step,
        required this.deliveryTime,
        required this.acceptedTime,
        required this.id,
        required this.deliveryMethod,
        required this.requests,
        required this.paymentMethod,
        required this.uDate,
        required this.uTime,
        required this.orderNumber,
        required this.status,
        required this.uTotalPrice,
        required this.lat,
        required this.lan
      }
      );

  Map<String, dynamic> toMap() {
    return {
      'profile_image':profileImage,
      'user':user ,
          //.fromMap((e) => e.toMap()),
      'step':step,
      "delivery_time":deliveryTime,
      'id':id,
      'accepted_time':acceptedTime,
      "delivery_method":deliveryMethod,
      'status': status,
      'u_date': uDate,
      'u_time': uTime,
      'payment_method': paymentMethod,
      "total_price":uTotalPrice.toDouble(),
      "lan": lan.toDouble(),
      'lat':lat.toDouble(),
      'order_number':orderNumber.toDouble(),
      'requests':requests.map((e) => e.toMap()).toList(),
      //List<InventoryProduct>.toMap['inventoryProduct'])
      //
      // inventoryProduct.map((i)=>
      //        i.()).toList(),
    };
  }

  factory Orders.fromMap(Map<String, dynamic> map) {
    return Orders(
      profileImage: map['profile_image'],
     user: map['map'],
     // user :(map['user']).map((data)=>Customers.fromMap(data)),
      //(phoneNumber: phoneNumber, name: name, address: address, promoCode: promoCode, email: email, imageSrc: imageSrc),
      step: map['step'],
      deliveryTime: map['delivery_time'],
      id: map['id'],
      acceptedTime: map['accepted_time'],
      orderNumber: map['order_number'].toDouble(),
      status: map['status'],
      deliveryMethod: map['delivery_method'],
      uDate: map['u_date'],
      uTime: map['u_time'],
      paymentMethod: map['payment_method'],
      uTotalPrice: map['total_price'].toDouble(),
      lat:map["lat"].toDouble(),
      lan:map["lan"].toDouble(),
      requests: (map['requests'] as List)
          .map((data) => UserRequests.fromMap(data)).toList(),

    );
  }
}

// List <Orders> userOrders =[];
//
// void adduserOrder(
//     {
//       required List<UserRequests> requests,
//       required String oUser,
//       required String email,
//       required int phone,
//       required String uAddress,
//       required DateTime uDate,
//       required DateTime uTime,
//      // required int uTotalRequests,
//       required double uTotalPrice,
//       required double lat,
//       required  double lan,
//       required String deliveryMethod,
//
//     })
// {
//   final newDetails= Orders(
//     deliveryMethod: deliveryMethod,
//     requests:requests,
//     oUser: oUser,
// // email:email,
//   phone: phone,
//   uAddress:   uAddress,
//  uDate:  uDate,
//    uTime:  uTime,
//  // uTotalRequests: uTotalRequests,
//     uTotalPrice:uTotalPrice,
//     lan: lan,
//     lat: lat,
//
//
//   );
//
//    userOrders.add(newDetails);
//}