import 'package:flutter/material.dart';
import 'package:submission_pemula/cart_item.dart';
import 'package:submission_pemula/constant.dart';

class CartCard extends StatefulWidget {
  CartItemModel cartItem;
  CartCard({Key? key, required this.cartItem}) : super(key: key);

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 96,
        padding: EdgeInsets.all(Spacing.single),
        child: Row(
          children: [
            Flexible(
                flex: 3,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(widget.cartItem.item.productImage,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity))),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Text(widget.cartItem.item.productName,
                      style:
                          const TextStyle(fontWeight: FontWeight.w700, fontSize: 16), maxLines: 1, overflow: TextOverflow.ellipsis,),
                  Text(widget.cartItem.item.productWeight,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.grey)),
                  Text(r"$" + widget.cartItem.item.productPrice.toString(), style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,))
                ]),
              ),
            ),
            Flexible(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]!, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(widget.cartItem.quantity.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18)),
                      ),
                      ),
                  ],
                ),
              ]
            ))
          ],
        ),
      ),
    );
  }
}
