import 'package:app_trieu_hoi_gau/constants.dart';
import 'package:flutter/material.dart';

class PageForBoy extends StatefulWidget {
  const PageForBoy({Key? key}) : super(key: key);

  @override
  State<PageForBoy> createState() => PageForBoyState();
}

class PageForBoyState extends State<PageForBoy> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(kPadding),
          child: Center(
            child: Text("Bạn hiện chưa có mã số"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(kPadding),
          child: ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                Size(
                  MediaQuery.of(context).size.width - kPadding * 2,
                  48,
                ),
              ),
            ),
            onPressed: () {},
            child: const Center(
              child: Text("Bấm vào đây để tạo mã số"),
            ),
          ),
        ),
      ],
    );
  }
}
