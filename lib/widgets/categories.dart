import 'package:flutter/material.dart';
import 'package:myntra_clone/widgets/category_circle.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        const SizedBox(width: 12),
        CategoryCircle(
            onTap: () {},
            imageUrl:
                'https://cdn3.iconfinder.com/data/icons/universal-web-mobile-6-9/65/259-1024.png',
            catgName: "CATEGORIES"),
        CategoryCircle(
            onTap: () {},
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRAe6N01-s_U0wfmYKoR6ZgMO8G46Ro8RwVw&usqp=CAU',
            catgName: "MEN"),
        CategoryCircle(
            onTap: () {},
            imageUrl:
                'https://m.media-amazon.com/images/I/611jq5In-rL._UX679_.jpg',
            catgName: "WOMEN"),
        CategoryCircle(
            onTap: () {},
            imageUrl:
                'https://5.imimg.com/data5/ANDROID/Default/2021/11/WA/HE/GX/141907660/product-jpeg.jpeg',
            catgName: "KIDS"),
        CategoryCircle(
            onTap: () {},
            imageUrl:
                'https://www.ajantashoes.com/pub/media/catalog/product/cache/0ee050c3ffc3555709b9bb6062f4d7e9/s/l/sl0752_1__1.jpg',
            catgName: "FOOTWEAR"),
        CategoryCircle(
            onTap: () {},
            imageUrl:
                'https://img.freepik.com/free-photo/collection-beauty-products-with-copy-space_23-2148620110.jpg?w=2000',
            catgName: "BEAUTY"),
        CategoryCircle(
            onTap: () {},
            imageUrl:
                'https://images.naptol.com/usr/local/csp/staticContent/product_images/horizontal/750x750/leatherite-Wallet-+-Leatherite-Watch-1.jpg',
            catgName: "ACCESSORIES"),
        CategoryCircle(
            onTap: () {},
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS0YVTVkZDith6H_bfRRJKrL7uTFQLaz3KDy06Erx0JgAqjtx-lO3tCFDANMg73TlaF58&usqp=CAU',
            catgName: "HOME"),
        CategoryCircle(
            onTap: () {},
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzOiqeNXTr-GU_cJzuZLqNgQI4IxSx6S-5ZA&usqp=CAU',
            catgName: "JEWELLERY"),
        CategoryCircle(
            onTap: () {},
            imageUrl:
                'https://wp.missmalini.com/wp-content/uploads/2020/04/BeFunky-collage-8.jpg',
            catgName: "STUDIO"),
        CategoryCircle(
            onTap: () {},
            imageUrl:
                'https://www.leavesofgrassnewyork.com/cdn/shop/products/gift-card_612x.jpg?v=1614324792',
            catgName: "GIFT CARDS")
      ]),
    );
  }
}
