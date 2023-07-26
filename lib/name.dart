import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'next_button.dart';

class joinmembership extends StatefulWidget {
  const joinmembership({Key? key}) : super(key: key);

  @override
  State<joinmembership> createState() => _joinmembershipState();
}

class _joinmembershipState extends State<joinmembership> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white24,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "이름은 실명을 입력해주세요.",
              style: TextStyle(
                letterSpacing: -2,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 25, right: 25),
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 214, 212, 212), // 테두리 색상 설정
                  ),
                ),
                hintText: "이름입력",
              ),
            ),
          ),
          Spacer(),
          next_Button(
            onPressed: () {
              // 버튼이 클릭되었을 때 수행되는 동작
              // 예를 들어 Navigator.push 등의 기능을 여기에 추가할 수 있습니다.
            },
          ),
        ],
      ),
    );
  }
}
