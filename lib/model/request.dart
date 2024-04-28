
class UserRequests {
  final String pTitle;
  final double pPrice;
  final int pCount;
  final String pImageAssets;
  final String pSize;
  final List<String> pComponent;


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
      "price": pPrice,
      "count": pCount,
      "size": pSize,
      "component": pComponent,
    };
  }
  factory UserRequests.fromMap(Map<String, dynamic> map) {
    return   UserRequests(
      pImageAssets:map["image"],
      pTitle: map['title'],
      pPrice: map['price'],
      pCount: map['count'],
      pSize: map['size'],
      pComponent: map['component'],
    );
  }
}

List <UserRequests>userCartRequests =[];

void addUserCartRequests(
    {
      required String pTitle ,
      required double pPrice,
      required int pCount,
      required String imageAssets,
      required   String pSize,
      required List<String> pComponent,

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