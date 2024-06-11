
class UserRequests {
  final String pTitle;
   double pPrice;
   int pCount;
  final String pImageAssets;
  final String pSize;
  final String pComponent;


  UserRequests(
      {
        required this.pImageAssets,
        required this.pTitle,
        required this.pPrice,
        required this.pCount,
        required this.pSize,
        required this.pComponent
      }
      );

  Map<String, dynamic> toMap() {
    return {
      "image":pImageAssets,
      "title": pTitle,
      "price": pPrice.toDouble(),
      "count": pCount,
      "size": pSize,
      "component": pComponent,
    };
  }
  factory UserRequests.fromMap(Map<String, dynamic> map) {
    return   UserRequests(
      pImageAssets:map["image"],
      pTitle: map['title'],
      pPrice: map['price'].toDouble(),
      pCount: map['count'],
      pSize: map['size'],
      pComponent: map['component'],
    );
  }
}

List <UserRequests>userCartRequests =[];

// List <UserRequests>SelectedUserCartRequests =[];

void addUserCartRequests(
    {
      required String pTitle ,
      required double pPrice,
      required int pCount,
      required String imageAssets,
      required   String pSize,
      required String pComponent,

    })
{
  final newDetails=UserRequests(
    pComponent: pComponent,
    pSize: pSize,
    pCount: pCount,
    pPrice: pPrice,
    pTitle: pTitle,
    pImageAssets: imageAssets,
  );

  userCartRequests.add(newDetails);
}