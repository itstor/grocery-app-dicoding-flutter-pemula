class SpecialDealModel {
  int id;
  String title;
  String image;
  String? description;

  SpecialDealModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      });
}

class SpecialDealData {
  static List<SpecialDealModel> data = [
    SpecialDealModel(id: 0, title: 'Diskon Pengguna Baru', description: 'Dapatkan diskon hingga 100%', image: 'https://img.freepik.com/free-photo/healthy-vegetables-wooden-table_1150-38014.jpg?size=626&ext=jpg'),
    SpecialDealModel(id: 1, title: 'Flash Sale 2.2', description: 'Diskon setiap hari', image: 'https://images.ctfassets.net/3s5io6mnxfqz/5GlOYuzg0nApcehTPlbJMy/140abddf0f3f93fa16568f4d035cd5e6/AdobeStock_175165460.jpeg?fm=jpg&w=900&fl=progressive'),
    SpecialDealModel(id: 2, title: 'Kebut 9-12', description: 'Dapatkan diskon hingga 90%', image: 'https://5.imimg.com/data5/AZ/II/HF/SELLER-72926403/local-chicken-eggs--500x500.jpg'),
  ];
}
