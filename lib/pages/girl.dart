import 'package:flutter/material.dart';
import 'package:app_trieu_hoi_gau/constants.dart';
import 'package:app_trieu_hoi_gau/ui_elements/square_button.dart';

class PageForGirl extends StatefulWidget {
  const PageForGirl({Key? key}) : super(key: key);

  @override
  State<PageForGirl> createState() => PageForGirlState();
}

class PageForGirlState extends State<PageForGirl> {
  bool isRegistered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Column(
        children: [
          Visibility(
            visible: !isRegistered,
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Mã số gấu"),
                    hintText: "Nhập mã số của gấu đực ở đây",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, kPadding, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isRegistered = true; //
                      });
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - kPadding * 2,
                      height: 48,
                      child: Center(
                        child: Text(
                          "Xác nhận mã số",
                          style: appTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: isRegistered,
            child: Column(
              children: [
                Row(
                  children: [
                    SquareButton(
                      onPressed: () {},
                      text: "😋 Em đói quá",
                      buttonColor: Colors.red,
                    ),
                    SquareButton(
                      onPressed: () {},
                      text: "😋 Thèm trà sữa",
                      buttonColor: Colors.red,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SquareButton(
                      onPressed: () {},
                      text: "🥺 Nhớ anh quá",
                      buttonColor: Colors.red,
                    ),
                    SquareButton(
                      onPressed: () {},
                      text: "📱 Gọi em nha",
                      buttonColor: Colors.red,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SquareButton(
                      onPressed: () {},
                      text: "🥺 Ba mẹ em \nkhông có ở nhà",
                      buttonColor: Colors.red,
                    ),
                    SquareButton(
                      onPressed: () {},
                      text: "🥺 Quét nhà \ncho em đi",
                      buttonColor: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
