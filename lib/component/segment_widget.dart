import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:submission_pemula/constant.dart';

class SegmentWidget extends StatelessWidget {
  final Widget child;
  final String? title;
  final double? segmentPadding;
  final double? bottomMargin;

  const SegmentWidget(
      {Key? key, required this.child, this.segmentPadding, required this.title, this.bottomMargin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: segmentPadding ?? 0),
              child: Text(
                title ?? "null",
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            TextButton(onPressed: () {}, child: Text("See All")),
          ],
        ),
        SizedBox(height: bottomMargin ?? 0),
        child
      ],
    );
  }
}
