//
// class Categories {
//   final int catId;
//   final List<Products> products;
//   final String name;
//   const Categories({
//     required this.products,
//     required this.name,
//     required this.catId
// });
//   Map<String, dynamic> toMap() {
//     return {
//       "products":products.map((e) => e.toMap()).toList(),
//       "name": name
//
//     };
//   }
//   factory Categories.fromMap(Map<String, dynamic> map) {
//     return   Categories(
//       catId: map['id'],
//       products:(map["products"]as List).map((data) => Products.fromMap(data)).toList(),
//       name: map['name'],
//
//     );
//   }
//
// }
//
// List<Categories> categoriesList=[];
// void addDataToCategories({
//   required String name,
//   required List<Products> product,
//   required int id,
// }){
//   final newDetails= Categories(
//    name: name,
//     products: product,
//     catId: id
//
//
//   );
//
//   categoriesList.add(newDetails);
// }


class Products {
  final String category;
 final bool isFavorite;
 final String title;
 final double oldPrice;
 final double price;
  final String description;
  // "Ever wondered what's on a Big Mac®? The McDonald's Big Mac® is a 100% beef burger with a taste like no other.The mouthwatering perfection starts with two 100% pure",
  final String imageSrc;

  const Products( {
    required this.category,
   required this.isFavorite,
    required this.title,
    required this.oldPrice,
    required this.price,
    required this.description,
    required this.imageSrc,
});
 Map<String, dynamic> toMap() {
   return {
     "category":category,
     "image":imageSrc,
     "title": title,
     "price": price,
     "old_price": oldPrice,
     "description": description,
     "is_favorite": isFavorite,
   };
 }
 factory Products.fromMap(Map<String, dynamic> map) {
   return   Products(
     category:map['category'],
     imageSrc:map["image"],
     title: map['title'],
     price: map['price'],
     oldPrice: map['old_price'],
     description: map['description'],
     isFavorite: map['is_favorite'],
   );
 }
}