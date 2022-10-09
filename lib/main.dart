import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Color(0xff503061),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text("건너뛰기",
                  style: TextStyle(color: Colors.white),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                  },
                ),
              ],
            ),
          ),
          body: StartPage(),
        );
  }
}
class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox.expand(
          child: Container(
            color: Color(0xff503061),
            child: Expanded(
              child :
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child:Container(
                      margin: EdgeInsets.all(10),
                      child: Text("캠페인 운영", textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 48, fontWeight: FontWeight.w800,
                              color: Colors.white)),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    flex: 1,
                    child:Container(
                      margin: EdgeInsets.all(10),
                      child: Text('현재 진행하고 있는\n캠페인을 확인 할 수 있어요', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, color: Colors.white, ),),
                    ),
                  ),
                  Flexible(
                      flex: 1,
                      child:Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Bar(),
                            Dot(),
                            Dot(),
                          ],
                        ),
                      )
                  ),
                  Flexible(
                    flex:4,
                    child:Image.asset('IMG_3051.png', ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox.expand(
          child: Container(
            color: Color(0xff503061),
            child: Expanded(
              child :
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child:Container(
                      margin: EdgeInsets.all(10),
                      child: Text("보유주식 확인", textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 48, fontWeight: FontWeight.w800,
                              color: Colors.white)),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    flex: 1,
                    child:Container(
                      margin: EdgeInsets.all(10),
                      child: Text('주주명부 폐쇄 시점의 보유\n주식수를 확인할 수 있어요', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, color: Colors.white, ),),
                    ),
                  ),
                  Flexible(
                      flex: 1,
                      child:Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Dot(),
                            Bar(),
                            Dot(),
                          ],
                        ),
                      )
                  ),
                  Flexible(
                    flex:4,
                    child:Image.asset('IMG_3052.png', ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox.expand(
          child:Container(
            color: Color(0xff503061),
            child: Expanded(
              child :
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child:Container(
                      margin: EdgeInsets.all(10),
                      child: Text("전자 의결", textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 48, fontWeight: FontWeight.w800,
                              color: Colors.white)),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    flex: 1,
                    child:Container(
                      margin: EdgeInsets.all(10),
                      child: Text('서면으로 제출하지 않아도\n어디서든 편하게 가능합니다', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, color: Colors.white, ),),
                    ),
                  ),
                  Flexible(
                      flex: 1,
                      child:Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Dot(),
                            Dot(),
                            Bar(),
                          ],
                        ),
                      )
                  ),
                  Flexible(
                    flex:4,
                    child:Image.asset('IMG_3053.png', ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
class Bar extends StatelessWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 8,
      margin: EdgeInsets.fromLTRB(2, 10, 2, 10),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(10),
        color: Colors.amber,
      ),
    );
  }
}
class Dot extends StatelessWidget {
  const Dot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      margin: EdgeInsets.fromLTRB(2, 10, 2, 10),
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(10),
          border: Border.all(
            color: Colors.amber,
            width: 2,
          )
      ),
    );
  }
}


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final List<Widget> _list = [
    Flexible(
      flex: 1,
      child:Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
        color: Colors.blue,
        child: CircleAvatar(
          backgroundImage: AssetImage('tli_logo.jpg')
        ),
      ),
    ),
    Flexible(
      flex: 1,
      child:Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
        color: Colors.pinkAccent,
        child: CircleAvatar(
          backgroundImage: AssetImage('sm_logo.png'),
        ),
      ),
    ),
    Flexible(
      flex: 1,
      child:Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
        color: Colors.deepOrangeAccent,
        child: CircleAvatar(
          backgroundImage: AssetImage('sago_logo.png'),
        ),
      ),
    )
  ];

  Widget PageTextLoader(int _currentPage) {

    switch(_currentPage) {
      case 1:
        return Container(
          child: Column(
            children: [
              Icon(Icons.keyboard_arrow_up),
              Text("티엘아이", style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),
              )
            ],
          ),
        );
        break;
      case 2:
        return Container(
          child: Text('에스앰'),
        );
        break;
      case 3:
        return Container(
          child: Text('사조산업'),
        );
        break;
      default:
        return Container(
          child: Text('오류인듯'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color(0xff503061),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              title: Image.asset('logo.png',),
            ),
            body: Container(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: PageView.builder(
                      controller: PageController(viewportFraction: 0.35),
                      onPageChanged:PageTextLoader,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                          child: _list[index % _list.length],
                        );
                      }
                    ),
                  ),
                  Flexible(
                    flex:1,
                    child: Column(
                      children: [

                      ],
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              child: ElevatedButton(
                onPressed: () {
                  //페이지이동 구현

                },
                child: Text('종료'),
              ),
            ),
    );
  }
}