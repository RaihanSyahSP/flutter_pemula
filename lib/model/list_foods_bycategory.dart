class ListFoodsByCategory {
  String food;
  String thumbnailFood;
  String idFood;
  String idCategory;
  String category;

  ListFoodsByCategory(
      {required this.food,
      required this.thumbnailFood,
      required this.idFood,
      required this.idCategory,
      required this.category});
}

var listFoodsByCategory = [
  ListFoodsByCategory(
      food: "Beef and Mustard Pie",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/sytuqu1511553755.jpg",
      idFood: "52874",
      idCategory: "1",
      category: "Beef"),
  ListFoodsByCategory(
      food: "Beef and Oyster pie",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/wrssvt1511556563.jpg",
      idFood: "52878",
      idCategory: "1",
      category: "Beef"),
  ListFoodsByCategory(
      food: "Beef Asado",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/pkopc31683207947.jpg",
      idFood: "53071",
      idCategory: "1",
      category: "Beef"),
  ListFoodsByCategory(
      food: "Beef Bourguignon",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/vtqxtu1511784197.jpg",
      idFood: "52904",
      idCategory: "1",
      category: "Beef"),
  ListFoodsByCategory(
      food: "Beef Brisket Pot Roast",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/ursuup1487348423.jpg",
      idFood: "52812",
      idCategory: "1",
      category: "Beef"),
  ListFoodsByCategory(
      food: "Ayam Percik",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/020z181619788503.jpg",
      idFood: "53050",
      idCategory: "2",
      category: "Chicken"),
  ListFoodsByCategory(
      food: "Brown Stew Chicken",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/sypxpx1515365095.jpg",
      idFood: "52940",
      idCategory: "2",
      category: "Chicken"),
  ListFoodsByCategory(
      food: "Chicken Karaage",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/tyywsw1505930373.jpg",
      idFood: "52831",
      idCategory: "2",
      category: "Chicken"),
  ListFoodsByCategory(
      food: "Chicken Marengo",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/qpxvuq1511798906.jpg",
      idFood: "53053",
      idCategory: "2",
      category: "Chicken"),
  ListFoodsByCategory(
      food: "Chicken Parmentier",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/uwvxpv1511557015.jpg",
      idFood: "52879",
      idCategory: "2",
      category: "Chicken"),
  ListFoodsByCategory(
      food: "Apam balik",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg",
      idFood: "53049",
      idCategory: "3",
      category: "Desert"),
  ListFoodsByCategory(
      food: "Apple Frangipan Tart",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg",
      idFood: "52768",
      idCategory: "3",
      category: "Desert"),
  ListFoodsByCategory(
      food: "Banana Pancakes",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/sywswr1511383814.jpg",
      idFood: "52855",
      idCategory: "3",
      category: "Desert"),
  ListFoodsByCategory(
      food: "Carrot Cake",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/vrspxv1511722107.jpg",
      idFood: "52897",
      idCategory: "3",
      category: "Desert"),
  ListFoodsByCategory(
      food: "Chocolate Souffle",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/twspvx1511784937.jpg",
      idFood: "52905",
      idCategory: "3",
      category: "Desert"),
  ListFoodsByCategory(
      food: "Sugar Pie",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/yrstur1511816601.jpg",
      idFood: "52931",
      idCategory: "3",
      category: "Desert"),
  ListFoodsByCategory(
      food: "Lasagne",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/wtsvxx1511296896.jpg",
      idFood: "52844",
      idCategory: "4",
      category: "Pasta"),
  ListFoodsByCategory(
      food: "Spaghetti alla Carbonara",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/llcbn01574260722.jpg",
      idFood: "52982",
      idCategory: "4",
      category: "Pasta"),
  ListFoodsByCategory(
      food: "Lasagna Sandwiches",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/xr0n4r1576788363.jpg",
      idFood: "52987",
      idCategory: "4",
      category: "Pasta"),
  ListFoodsByCategory(
      food: "Fettucine alfredo",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/uquqtu1511178042.jpg",
      idFood: "52835",
      idCategory: "4",
      category: "Pasta"),
  ListFoodsByCategory(
      food: "Venetian Duck Ragu",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/qvrwpt1511181864.jpg",
      idFood: "53053",
      idCategory: "4",
      category: "Pasta"),
  ListFoodsByCategory(
      food: "Sushi",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/g046bb1663960946.jpg",
      idFood: "53065",
      idCategory: "5",
      category: "Seafood"),
  ListFoodsByCategory(
      food: "Tuna Nicoise",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/yypwwq1511304979.jpg",
      idFood: "52852",
      idCategory: "5",
      category: "Seafood"),
  ListFoodsByCategory(
      food: "Salmon Avocado Salad",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/1549542994.jpg",
      idFood: "52960",
      idCategory: "5",
      category: "Seafood"),
  ListFoodsByCategory(
      food: "Nasi lemak",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/wai9bw1619788844.jpg",
      idFood: "53051",
      idCategory: "5",
      category: "Seafood"),
  ListFoodsByCategory(
      food: "Mee goreng mamak",
      thumbnailFood:
          "https://www.themealdb.com/images/media/meals/xquakq1619787532.jpg",
      idFood: "53048",
      idCategory: "5",
      category: "Seafood"),
];
