import 'package:flutter/material.dart';
import 'package:submission_pemula/cart_item.dart';
import 'package:submission_pemula/component/bottom_navigation.dart';
import 'package:submission_pemula/component/cart_card.dart';
import 'package:submission_pemula/component/green_button.dart';
import 'package:submission_pemula/constant.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: CartItem.instance.items.isNotEmpty
          ? SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(Spacing.single),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: CartItem.instance.items.length,
                          itemBuilder: (context, index) {
                            var data =
                                CartItem.instance.items.values.toList()[index];
                            return CartCard(
                              cartItem: data,
                            );
                          },
                        ),
                      ),
                      const Divider(),
                      const SizedBox(
                        height: Spacing.single,
                      ),
                      Text(
                        "Promo Code",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Colors.grey[600]),
                      ),
                      const SizedBox(
                        height: Spacing.single,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Promo Code",
                          hintStyle: const TextStyle(color: Colors.grey),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: Spacing.single,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: Spacing.single,
                      ),
                      Column(
                        children: [
                          LeftRightText(
                              left: "Subtotal",
                              right: r"$" +
                                  CartItem.instance.totalPrice().toString()),
                          const LeftRightText(
                              left: "Shipping", right: r"$" + "3"),
                          LeftRightText(
                              left: "Total",
                              right: r"$" +
                                  (CartItem.instance.totalPrice() + 3)
                                      .toString()),
                        ],
                      ),
                      const SizedBox(
                        height: Spacing.double,
                      ),
                      Container(
                          width: double.infinity,
                          height: 56,
                          child: GreenButton(
                              child: const Text(
                                "Checkout",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 17),
                              ),
                              onPressed: () {})),
                    ],
                  )),
            )
          : Center(
            child: Image.asset(
              "assets/images/empty-cart.png",
              width: 200,
            ),
          ),
    );
  }
}

class LeftRightText extends StatelessWidget {
  final String left;
  final String right;

  const LeftRightText({
    Key? key,
    required this.left,
    required this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          left,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.grey[600]),
        ),
        Text(
          right,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ],
    );
  }
}
