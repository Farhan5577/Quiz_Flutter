import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class ProductGridPage extends StatelessWidget {
  const ProductGridPage({super.key});

  final List<Product> products = const [
    Product(
      name: "Nike Air Force1",
      desc: "Sepatu Nike ini cocok buat kamu yang suka olahraga.",
      price: "Rp. 1.549.346",
      imageUrl:
          "https://images.unsplash.com/photo-1712168332222-c1996322f935?q=80&w=600",
      label: "New",
      labelColor: Color.fromARGB(255, 238, 255, 7),
    ),
    Product(
      name: "Kaos Polos",
      desc: "Kaos bahan Cotton 30s Reaktif, lembut dan nyaman.",
      price: "Rp. 75.456",
      imageUrl:
          "https://images.unsplash.com/photo-1523381210434-271e8be1f52b?w=600",
      label: "Terlaris",
      labelColor: Color.fromARGB(255, 68, 81, 255),
    ),
    Product(
      name: "Macbook Pro 2015",
      desc: "Laptop profesional dengan performa tinggi.",
      price: "Rp. 7.423.123",
      imageUrl:
          "https://down-id.img.susercontent.com/file/id-11134207-7r98u-ln02v63609uf67",
      label: "New",
      labelColor: Color.fromARGB(255, 238, 255, 7),
    ),
    Product(
      name: "Samsung Galaxy A23",
      desc: "Prosesor Snapdragon 680 untuk performa tinggi.",
      price: "Rp. 3.521.000",
      imageUrl:
          "https://indodana-web.imgix.net/assets/samsung-a23-thumbnail.png?auto=compress",
      label: "Terlaris",
      labelColor: Color.fromARGB(255, 68, 81, 255),
    ),
    Product(
      name: "Levi's",
      desc: "Levi's® Men's 511™ Slim Jeans (04511-5849).",
      price: "Rp. 1.001.142",
      imageUrl:
          "https://down-id.img.susercontent.com/file/id-11134207-7rbkb-m70kqqldinqle2@resize_w450_nl.webp",
      label: "New",
      labelColor: Color.fromARGB(255, 238, 255, 7),
    ),
    Product(
      name: "SKMEI",
      desc: "Jam tangan kasual pria material stainless steel.",
      price: "Rp. 221.523",
      imageUrl:
          "https://down-id.img.susercontent.com/file/f3e915fa325e71349e328cbc015cc238@resize_w450_nl.webp",
      label: "Terlaris",
      labelColor: Color.fromARGB(255, 68, 81, 255),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/image/logo.png', height: 80),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            childAspectRatio: 3 / 6,
          ),
          itemBuilder: (context, index) {
            return ProductCard(product: products[index]);
          },
        ),
      ),
    );
  }
}
