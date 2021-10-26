class ProductModel {
  final String? img;
  final String? name;
  final String? Bcolor;

  final String? amount;

  ProductModel({this.amount, this.name, this.img, this.Bcolor});
}

List<ProductModel> productItems = [
  ProductModel(
    amount: '345',
    name: 'Red AirPods Max',
    img: 'assets/red.png',
    Bcolor: '.yellow[100]',
  ),
  ProductModel(
    amount: '250',
    name: 'Black AirPods Max',
    img: 'assets/black.png',
    Bcolor: '.green[100]',
  ),
  ProductModel(
    amount: '300',
    name: 'Blue AirPods Max',
    img: 'assets/blue.png',
    Bcolor: '.pink[100]',
  ),
  ProductModel(
    amount: '400',
    name: 'Gold AirPods Max',
    img: 'assets/gold.png',
  ),
  ProductModel(
    amount: '356',
    name: 'Purple AirPods Max',
    img: 'assets/purple.png',
    Bcolor: '.purple[100]',
  ),
  ProductModel(
      amount: '253',
      name: 'Purple AirPods Max',
      img: 'assets/pink.png',
      Bcolor: '.yellow[100]'),
];
