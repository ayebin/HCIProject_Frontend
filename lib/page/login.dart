import 'package:flutter/material.dart';
import 'package:travelmate/page/home.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'delete_acc.dart';
import 'package:travelmate/components/navigation_menu.dart';
import 'package:travelmate/design/color_system.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/travel.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Travel_Mate.png',
                      height: 70,
                      width: 250,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: 80,
                      width: 341,
                      child: Text(
                        '나를 위한 여행 플래너, 트래블메이트',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black45,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    SizedBox(
                      height: 120,
                      width: 426,
                      child: Text(
                        '단 하나 뿐인 당신의 여행을 만들어드립니다.\n당신의 모든 요구를 만족시키는 맞춤 설계 여행,\n이제 간편하게 시작하세요.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text(
                        '바로 시작하기',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(440, 75),
                        backgroundColor: Color(0xFF689ADB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 180,
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'or',
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                          Container(
                            width: 180,
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        '로그인',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF1E4577),
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(440, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                      },
                      child: Text(
                        '회원가입',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF1E4577),
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(440, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 180, right: 160),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '저장을 원하시면 로그인하세요!',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DeletePage()),
                              );
                            },
                            child: Text(
                              '계정삭제',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.transparent), // 기본 배경 투명
                              foregroundColor: MaterialStateProperty.all(Colors.grey), // 텍스트 색상 고정
                              overlayColor: MaterialStateProperty.all(Colors.transparent), // 호버 시 효과 완전 제거
                              shadowColor: MaterialStateProperty.all(Colors.transparent),
                              minimumSize: MaterialStateProperty.all(Size(70, 30)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              ),
                              elevation: MaterialStateProperty.all(0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}