import 'package:flutter/material.dart';
import 'package:submission_pemula/cart_item.dart';
import 'package:submission_pemula/component/category_button.dart';
import 'package:submission_pemula/component/deals_card.dart';
import 'package:submission_pemula/component/icon_with_number.dart';
import 'package:submission_pemula/component/product_card.dart';
import 'package:submission_pemula/component/segment_widget.dart';
import 'package:submission_pemula/constant.dart';
import 'package:submission_pemula/models/product_model.dart';
import 'package:submission_pemula/models/special_deal_model.dart';
import 'package:submission_pemula/screens/cart_page.dart';
import 'package:submission_pemula/screens/detail_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _specialDealData = SpecialDealData.data;
  final _popularDealData = PopularDealsData.data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        shadowColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: IconWithNumber(
              icon: Icons.shopping_cart_outlined,
              count: CartItem.instance.totalItem(),
              iconColor: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SegmentWidget(
                title: 'Categories',
                bottomMargin: Spacing.single,
                segmentPadding: Spacing.double,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CategoryButton(
                        icon: ImageIcon(
                          AssetImage(
                              'assets/icons/categories_icon/Vegetable 1.png'),
                          color: Color(0xFF54B175),
                        ),
                        label: 'Vegetables',
                        iconColor: Color(0xFFE4F3EA)),
                    CategoryButton(
                        icon: ImageIcon(
                          AssetImage('assets/icons/categories_icon/Fruits.png'),
                          color: Color(0xFFFE6E4C),
                        ),
                        label: 'Fruits',
                        iconColor: Color(0xFFFFECE8)),
                    CategoryButton(
                        icon: ImageIcon(
                          AssetImage('assets/icons/categories_icon/Eggs.png'),
                          color: Color(0xFFFEBF43),
                        ),
                        label: 'Milks & Eggs',
                        iconColor: Color(0xFFFFF6E4)),
                    CategoryButton(
                        icon: ImageIcon(
                          AssetImage('assets/icons/categories_icon/Meat.png'),
                          color: Color(0xFF9B81E5),
                        ),
                        label: 'Meat',
                        iconColor: Color(0xFFF1EDFC)),
                  ],
                )),
            const SizedBox(height: Spacing.double),
            SegmentWidget(
              title: 'Special Deals for You',
              segmentPadding: Spacing.double,
              child: Container(
                  height: 170,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var data = _specialDealData[index];
                        return Padding(
                          padding: const EdgeInsets.only(left: Spacing.double),
                          child: DealsCard(
                            image: NetworkImage(data.image),
                            title: data.title,
                            subtitle: data.description ?? "",
                          ),
                        );
                      },
                      itemCount: _specialDealData.length)),
            ),
            const SizedBox(height: Spacing.double),
            SegmentWidget(
                title: 'Popular Deals',
                segmentPadding: Spacing.double,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: Spacing.double, right: Spacing.double),
                  width: double.infinity,
                  child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _popularDealData.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 250,
                              childAspectRatio: 0.7,
                              crossAxisSpacing: Spacing.single,
                              mainAxisSpacing: Spacing.single),
                      itemBuilder: (context, index) {
                        var data = _popularDealData[index];
                        return ProductCard(
                          productName: data.productName,
                          productImage: NetworkImage(data.productImage),
                          productPrice: data.productPrice.toString(),
                          productWeight: data.productWeight,
                          onTapCard: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProductDetailPage(product: data)),
                            );
                          },
                          onTapBuy: () {
                            setState(() {
                              CartItem.instance.addItem(data);
                            });
                          },
                        );
                      }),
                )),
          ],
        ),
      ),
    );
  }
}
