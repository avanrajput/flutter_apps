class Product {
  final String name;
  final String category;
  final double price;
  final double priceBeforeDiscount;
  final double discountPercent;
  final String imageUrl;

  Product({
    required this.name,
    required this.category,
    required this.price,
    required this.priceBeforeDiscount,
    required this.discountPercent,
    required this.imageUrl,
  });
}

List<Product> products = [
  Product(
    name: 'Red Printed T-shirt',
    category: 'Shirts',
    price: 899.0,
    priceBeforeDiscount: 999.0,
    discountPercent: 10.0,
    imageUrl:
        'https://www.montecarlo.in/images/ProductImages/xlarge/222057168-1-38_01-USx-042042-VmX.jpg',
  ),
  Product(
    name: 'Blue Denim Jacket',
    category: 'Men\'s Fashion',
    price: 2499.0,
    priceBeforeDiscount: 2999.0,
    discountPercent: 16.7,
    imageUrl:
        'https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/10617856/2019/11/19/6dfc4e18-c303-41f1-b5db-0db695411a941574163077152-Roadster-Men-Jackets-1531574163076203-1.jpg',
  ),
  Product(
    name: 'Floral Print Maxi Dress',
    category: 'Women\'s Fashion',
    price: 1799.0,
    priceBeforeDiscount: 1999.0,
    discountPercent: 10.0,
    imageUrl:
        'https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/e/8/tr:w-270,/e8781d6TheVanca-DRF502631_1.jpg?rnd=20200526195200',
  ),
  Product(
    name: 'Cotton Silk Saree',
    category: 'Women\'s Fashion',
    price: 1599.0,
    priceBeforeDiscount: 1999.0,
    discountPercent: 20.0,
    imageUrl:
        'https://images.meesho.com/images/products/107082641/27n6v_512.webp',
  ),
  Product(
    name: 'Black Sports Shoes',
    category: 'Footwear',
    price: 1999.0,
    priceBeforeDiscount: 2499.0,
    discountPercent: 20.0,
    imageUrl:
        'https://images.meesho.com/images/products/71085131/shwbu_512.webp',
  ),
  Product(
    name: 'Pink Handbag',
    category: 'Accessories',
    price: 999.0,
    priceBeforeDiscount: 1299.0,
    discountPercent: 23.1,
    imageUrl:
        'https://5.imimg.com/data5/SELLER/Default/2022/5/UQ/LO/KV/57168143/ladies-pink-purse.jpg',
  ),
  Product(
    name: 'Striped Polo Shirt',
    category: 'Shirts',
    price: 699.0,
    priceBeforeDiscount: 799.0,
    discountPercent: 12.5,
    imageUrl:
        'https://cdn15.nnnow.com/web-images/large/styles/FB6IUADYK10/1682588822371/1.jpg',
  ),
  Product(
    name: 'Printed Kurti',
    category: 'Kurtas',
    price: 1299.0,
    priceBeforeDiscount: 1499.0,
    discountPercent: 13.3,
    imageUrl:
        'https://images.meesho.com/images/products/66773017/lvz8a_512.webp',
  ),
  Product(
    name: 'Red Printed T-shirt',
    category: 'Shirts',
    price: 899.0,
    priceBeforeDiscount: 999.0,
    discountPercent: 10.0,
    imageUrl:
        'https://www.montecarlo.in/images/ProductImages/xlarge/222057168-1-38_01-USx-042042-VmX.jpg',
  ),
  Product(
    name: 'Blue Denim Jacket',
    category: 'Men\'s Fashion',
    price: 2499.0,
    priceBeforeDiscount: 2999.0,
    discountPercent: 16.7,
    imageUrl:
        'https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/10617856/2019/11/19/6dfc4e18-c303-41f1-b5db-0db695411a941574163077152-Roadster-Men-Jackets-1531574163076203-1.jpg',
  ),
  Product(
    name: 'Floral Print Maxi Dress',
    category: 'Women\'s Fashion',
    price: 1799.0,
    priceBeforeDiscount: 1999.0,
    discountPercent: 10.0,
    imageUrl:
        'https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/e/8/tr:w-270,/e8781d6TheVanca-DRF502631_1.jpg?rnd=20200526195200',
  ),
  Product(
    name: 'Cotton Silk Saree',
    category: 'Women\'s Fashion',
    price: 1599.0,
    priceBeforeDiscount: 1999.0,
    discountPercent: 20.0,
    imageUrl:
        'https://images.meesho.com/images/products/107082641/27n6v_512.webp',
  ),
  Product(
    name: 'Black Sports Shoes',
    category: 'Footwear',
    price: 1999.0,
    priceBeforeDiscount: 2499.0,
    discountPercent: 20.0,
    imageUrl:
        'https://images.meesho.com/images/products/71085131/shwbu_512.webp',
  ),
  Product(
    name: 'Pink Handbag',
    category: 'Accessories',
    price: 999.0,
    priceBeforeDiscount: 1299.0,
    discountPercent: 23.1,
    imageUrl:
        'https://5.imimg.com/data5/SELLER/Default/2022/5/UQ/LO/KV/57168143/ladies-pink-purse.jpg',
  ),
  Product(
    name: 'Striped Polo Shirt',
    category: 'Shirts',
    price: 699.0,
    priceBeforeDiscount: 799.0,
    discountPercent: 12.5,
    imageUrl:
        'https://cdn15.nnnow.com/web-images/large/styles/FB6IUADYK10/1682588822371/1.jpg',
  ),
  Product(
    name: 'Printed Kurti',
    category: 'Kurtas',
    price: 1299.0,
    priceBeforeDiscount: 1499.0,
    discountPercent: 13.3,
    imageUrl:
        'https://images.meesho.com/images/products/66773017/lvz8a_512.webp',
  ),
  Product(
    name: 'Red Printed T-shirt',
    category: 'Shirts',
    price: 899.0,
    priceBeforeDiscount: 999.0,
    discountPercent: 10.0,
    imageUrl:
        'https://www.montecarlo.in/images/ProductImages/xlarge/222057168-1-38_01-USx-042042-VmX.jpg',
  ),
  Product(
    name: 'Blue Denim Jacket',
    category: 'Men\'s Fashion',
    price: 2499.0,
    priceBeforeDiscount: 2999.0,
    discountPercent: 16.7,
    imageUrl:
        'https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/10617856/2019/11/19/6dfc4e18-c303-41f1-b5db-0db695411a941574163077152-Roadster-Men-Jackets-1531574163076203-1.jpg',
  ),
  Product(
    name: 'Floral Print Maxi Dress',
    category: 'Women\'s Fashion',
    price: 1799.0,
    priceBeforeDiscount: 1999.0,
    discountPercent: 10.0,
    imageUrl:
        'https://adn-static1.nykaa.com/nykdesignstudio-images/pub/media/catalog/product/e/8/tr:w-270,/e8781d6TheVanca-DRF502631_1.jpg?rnd=20200526195200',
  ),
  Product(
    name: 'Cotton Silk Saree',
    category: 'Women\'s Fashion',
    price: 1599.0,
    priceBeforeDiscount: 1999.0,
    discountPercent: 20.0,
    imageUrl:
        'https://images.meesho.com/images/products/107082641/27n6v_512.webp',
  ),
  Product(
    name: 'Black Sports Shoes',
    category: 'Footwear',
    price: 1999.0,
    priceBeforeDiscount: 2499.0,
    discountPercent: 20.0,
    imageUrl:
        'https://images.meesho.com/images/products/71085131/shwbu_512.webp',
  ),
  Product(
    name: 'Pink Handbag',
    category: 'Accessories',
    price: 999.0,
    priceBeforeDiscount: 1299.0,
    discountPercent: 23.1,
    imageUrl:
        'https://5.imimg.com/data5/SELLER/Default/2022/5/UQ/LO/KV/57168143/ladies-pink-purse.jpg',
  ),
  Product(
    name: 'Striped Polo Shirt',
    category: 'Shirts',
    price: 699.0,
    priceBeforeDiscount: 799.0,
    discountPercent: 12.5,
    imageUrl:
        'https://cdn15.nnnow.com/web-images/large/styles/FB6IUADYK10/1682588822371/1.jpg',
  ),
  Product(
    name: 'Printed Kurti',
    category: 'Kurtas',
    price: 1299.0,
    priceBeforeDiscount: 1499.0,
    discountPercent: 13.3,
    imageUrl:
        'https://images.meesho.com/images/products/66773017/lvz8a_512.webp',
  ),
];
