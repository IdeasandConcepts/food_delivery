// defining how a single FAV meal should look like

class FavMeal {
  const FavMeal({
    required this.isFavorite,
    required this.title,
    required this.img,
    required this.rate,
    required this.category,
    required this.price,
    required this.size,
    
  });

  final bool isFavorite;
  final String title;
  final String img;
  final int rate;
  final String category;
  final int price;
  final String size;
}