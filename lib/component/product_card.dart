import 'package:flutter/material.dart';
import 'package:submission_pemula/component/green_button.dart';
import 'package:submission_pemula/constant.dart';

class ProductCard extends StatelessWidget {
  final ImageProvider productImage;
  final String productName;
  final String productPrice;
  final String productWeight;
  final VoidCallback onTapCard;
  final VoidCallback onTapBuy;
  const ProductCard(
      {Key? key,
      required this.productName,
      required this.productImage,
      required this.productPrice,
      required this.productWeight,
      required this.onTapCard,
      required this.onTapBuy})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTapCard,
        child: Container(
          // width: 168,
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    child: Container(
                      color: Colors.grey[300],
                      child: Image(
                        // height: 113,
                        width: double.infinity,
                        image: productImage,
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
              const SizedBox(height: Spacing.half),
              Text(
                productName,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              const SizedBox(height: Spacing.single),
              Text(
                productWeight,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF8A8A8E)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    productPrice + r"$",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  SizedBox(
                      width: 40,
                      height: 40,
                      child: GreenButton(
                          child: const Text(
                            "+",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          onPressed: onTapBuy))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
