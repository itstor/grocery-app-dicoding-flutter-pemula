import 'package:flutter/material.dart';
import 'package:submission_pemula/constant.dart';
import 'package:submission_pemula/models/product_model.dart';

class ProductDetailPage extends StatefulWidget {
  final ProductModel product;

  ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.productName),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                width: double.infinity,
                child: Image.network(widget.product.productImage, fit: BoxFit.cover,)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.double, vertical: Spacing.single),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.product.productName,
                        style:
                            const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            widget.product.isFavorite = !widget.product.isFavorite;
                          });
                        },
                        splashRadius: 24.0,
                        icon: widget.product.isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border_outlined),
                        color: widget.product.isFavorite ? Colors.red : Color(0xFF54B175),
                      ),
                    ],
                  ),
                  SizedBox(height: Spacing.double),
                  Text(widget.product.productWeight,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF8A8A8E))),
                  SizedBox(height: Spacing.single),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Spacing.double, vertical: Spacing.half),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE4F3EA),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(
                        r"$" + widget.product.productPrice.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF54B175),
                            fontSize: 24),
                      )),
                  SizedBox(height: Spacing.double),
                  Text(widget.product.productDescription, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
