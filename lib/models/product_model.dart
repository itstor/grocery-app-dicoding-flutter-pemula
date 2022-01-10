class ProductModel {
  int id;
  String productName;
  String productWeight;
  int productPrice;
  String productImage;
  String productDescription;
  bool isFavorite = false;

  ProductModel(
      {required this.id,
      required this.productName,
      required this.productWeight,
      required this.productPrice,
      required this.productImage,
      required this.productDescription});
}

class PopularDealsData {
  static List<ProductModel> data = [
    ProductModel(
        id: 0,
        productName: "Premium Eggs",
        productWeight: "200g",
        productPrice: 2,
        productImage:
            "https://5.imimg.com/data5/AZ/II/HF/SELLER-72926403/local-chicken-eggs--500x500.jpg",
        productDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    ProductModel(
        id: 1,
        productName: "Chicken Meat",
        productWeight: "300g",
        productPrice: 7,
        productImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHFqPQtjLSvn-vn1AJbsH70NXDPCzk_9Xvc7b360-n6CJsXVZTBbKLyzktdS1OIf-3mBQ&usqp=CAU",
        productDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    ProductModel(
        id: 2,
        productName: "Fresh Celery",
        productWeight: "50g",
        productPrice: 1,
        productImage:
            "https://www.farmersalmanac.com/wp-content/uploads/2020/11/uses-for-celery.jpg",
        productDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    ProductModel(
        id: 3,
        productName: "Australian Orange",
        productWeight: "500g",
        productPrice: 6,
        productImage:
            "https://assets.onegoodthingbyjillee.com/2013/03/o4jLlMhX-oranges.png",
        productDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    ProductModel(
        id: 4,
        productName: "Fresh Milk",
        productWeight: "1 litre",
        productPrice: 2,
        productImage:
            "https://cdn-cas.orami.co.id/parenting/images/cold-milk-1525969725.width-800.jpegquality-80.jpg",
        productDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    ProductModel(
        id: 5,
        productName: "Paprika",
        productWeight: "150g",
        productPrice: 3,
        productImage:
            "https://asset.kompas.com/crops/uX1796e6CvFnVTYv90Xy_k2aNVA=/0x0:1000x667/750x500/data/photo/2020/03/26/5e7cbe0670de5.jpg",
        productDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  ];
}
