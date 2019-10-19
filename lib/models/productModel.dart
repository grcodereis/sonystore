
class ProductModel{
  String title;
  String description;
  String img;
  String price;
  String tag;
  bool isBatery;

  ProductModel(this.title, this.description, this.img, this.price, this.tag, this.isBatery);

}

List<ProductModel> products = [
  ProductModel("Headphone WH-1000XM3 com Noise Cancelling",
     "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
      "assets/images/1.png", "299.99",
      "img1",
      true
      ),

       ProductModel("Headphone WH-CH700N com Noise Cancelling sem fio CH700N",
     "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
      "assets/images/2.png", "399.99",
      "img2",
      true
      ),

      ProductModel("Headphone Cancelling WF-1000XM3",
     "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
      "assets/images/3.png", "159.99",
      "img3",
      true),

      ProductModel("Headphone WWF-1000XM3",
     "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
      "assets/images/4.png", "259.99",
      "img4",
      false),

       ProductModel("Headphone WWF-1000XM3",
     "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
      "assets/images/5.png", "159.99",
      "img5",
      false),
];

