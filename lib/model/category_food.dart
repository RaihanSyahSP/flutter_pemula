class CategoryFood {
  String idCategory;
  String category;
  String categoryThumbnail;
  String categoryDescription;

  CategoryFood(
      {required this.idCategory,
      required this.category,
      required this.categoryThumbnail,
      required this.categoryDescription});
}

var foodCategory = [
  CategoryFood(
      idCategory: "1",
      category: "Beef",
      categoryThumbnail: "https://www.themealdb.com/images/category/beef.png",
      categoryDescription:
          "Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]"),
  CategoryFood(
      idCategory: "2",
      category: "Chicken",
      categoryThumbnail:
          "https://www.themealdb.com/images/category/chicken.png",
      categoryDescription:
          "Chicken is a type of domesticated fowl, a subspecies of the red junglefowl. It is one of the most common and widespread domestic animals, with a total population of more than 19 billion as of 2011.[1] Humans commonly keep chickens as a source of food (consuming both their meat and eggs) and, more rarely, as pets."),
  CategoryFood(
      idCategory: "3",
      category: "Desert",
      categoryThumbnail:
          "https://www.themealdb.com/images/category/dessert.png",
      categoryDescription:
          "Dessert is a course that concludes a meal. The course usually consists of sweet foods, such as confections dishes or fruit, and possibly a beverage such as dessert wine or liqueur, however in the United States it may include coffee, cheeses, nuts, or other savory items regarded as a separate course elsewhere. In some parts of the world, such as much of central and western Africa, and most parts of China, there is no tradition of a dessert course to conclude a meal.The term dessert can apply to many confections, such as biscuits, cakes, cookies, custards, gelatins, ice creams, pastries, pies, puddings, and sweet soups, and tarts. Fruit is also commonly found in dessert courses because of its naturally occurring sweetness. Some cultures sweeten foods that are more commonly savory to create desserts."),
  CategoryFood(
      idCategory: "4",
      category: "Pasta",
      categoryThumbnail: "https://www.themealdb.com/images/category/pasta.png",
      categoryDescription:
          "Pasta is a staple food of traditional Italian cuisine, with the first reference dating to 1154 in Sicily. Also commonly used to refer to the variety of pasta dishes, pasta is typically a noodle made from an unleavened dough of a durum wheat flour mixed with water or eggs and formed into sheets or various shapes, then cooked by boiling or baking. As an alternative for those wanting a different taste, or who need to avoid products containing gluten, some pastas can be made using rice flour in place of wheat.[3][4] Pastas may be divided into two broad categories, dried (pasta secca) and fresh (pasta fresca)."),
  CategoryFood(
      idCategory: "5",
      category: "Seafood",
      categoryThumbnail:
          "https://www.themealdb.com/images/category/seafood.png",
      categoryDescription:
          "Seafood is any form of sea life regarded as food by humans. Seafood prominently includes fish and shellfish. Shellfish include various species of molluscs, crustaceans, and echinoderms. Historically, sea mammals such as whales and dolphins have been consumed as food, though that happens to a lesser extent in modern times. Edible sea plants, such as some seaweeds and microalgae, are widely eaten as seafood around the world, especially in Asia (see the category of sea vegetables). In North America, although not generally in the United Kingdom, the term seafood is extended to fresh water organisms eaten by humans, so all edible aquatic life may be referred to as seafood. For the sake of completeness, this article includes all edible aquatic life."),
];
