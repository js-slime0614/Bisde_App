import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
            child: Column(
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
        SizedBox.expand(
          child: Container(
            color: Color(0xff503061),
            child: Column(
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
        SizedBox.expand(
          child:Container(
            color: Color(0xff503061),
            child: Column(
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

  final PageController listPageController = new PageController(initialPage: 12,viewportFraction: 0.33);
  int textIdx = 0;
  final List<Widget> _list = [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(250)),
        color: Colors.blue,
      ),
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Container(
        padding: EdgeInsets.all(50),
        child: GestureDetector(
          child: Hero(
            tag: 'tliimage',
            child: CircleAvatar(
              backgroundImage: AssetImage('tli_logo.jpg'),
              ),
          ),
          onTap: () {
             Get.to(() => Tli_Page());
            })
        ),
      ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(250)),
        color: Colors.pinkAccent,
      ),
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Container(
        padding: EdgeInsets.all(50),
        child: CircleAvatar(
                backgroundImage: AssetImage('sm_logo.png'),
              ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(250)),
        color: Colors.orangeAccent,
      ),
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Container(
        padding: EdgeInsets.all(50),
        child: GestureDetector(
            child: Hero(
              tag: 'sagoimage',
              child: CircleAvatar(
                backgroundImage: AssetImage('sago_logo.png'),
              ),
            ),
            onTap: () {
              Get.to(() => Sago_Page());
            })
      ),
    ),
  ];
  final List<Widget> _textLoader = [
    Container(
      child: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          children: const [
            Align(alignment:Alignment.bottomRight,child: Padding(
              padding: EdgeInsets.all(10.0),
              child:Icon(Icons.keyboard_arrow_up)
            )),
            Align(
              alignment: Alignment.bottomRight,
              child: Text("티엘아이", style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Colors.white
                ),
              ),
            ),
            Align(
                alignment:Alignment.bottomRight,
                child: Text('턴어라운드 조합\n22년 7월 7일',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.white, fontSize: 15)
                  ,
                )
            )
          ],
        ),
      ),
    ),
    Container(
      child: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          children: const [
            Align(alignment:Alignment.bottomRight,child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.keyboard_arrow_up),
            )),
            Align(
              alignment: Alignment.bottomRight,
              child: Text("에스앰", style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Colors.white
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text("얼라인파트너스\n22년 3월 31일",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.white, fontSize: 15
                  )
              ),
            )
          ],
        ),
      ),
    ),
    Container(
      child: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          children: const [
            Align(alignment:Alignment.bottomRight,child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.keyboard_arrow_up),
            )),
            Align(
              alignment: Alignment.bottomRight,
              child: Text("사조산업", style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Colors.white
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text('소액주주연대\n22년 3월 24일',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.white, fontSize: 15
                ),
              ),
            )
          ],
        ),
      ),
    ),
  ];
  Widget textLoaderView() {
    return _textLoader[textIdx];
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
                      controller: listPageController,
                      onPageChanged:(int currentPage) {
                        setState(() {
                          textIdx = currentPage % 3;
                        });
                      },
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
                    child: textLoaderView()
                    ),
                ],
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.transparent,
              child: Container(
                child: TextButton(
                  child: Text('종료'),
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => Tli_Page())
                    );
                  },
                ),
              )
            ),
    );
  }
}

class Tli_Page extends StatelessWidget {
  const Tli_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff503061),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 30),
                  child: Text("시스템반도체 전문\n'주식회사 티엘아이'의\n주인은 창업주가 아닌 주주", style: TextStyle( color: Colors.white, fontSize: 48,),),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Hero(
                    tag: 'tliimage',
                    child: CircleAvatar(
                      backgroundImage: AssetImage('tli_logo.jpg'),
                      radius: 10
                    ),
                  ),
                ),
              ),
              Align(
               alignment: Alignment.topLeft,
                child: Padding(
                padding: const EdgeInsets.all(5),
                  child: Text("티엘아이", style: TextStyle(color: Colors.white,fontSize: 15),),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Text("턴어라운드 조합 | 주주총회 일정 : 22년 7월 7일", style: TextStyle(color: Colors.white, fontSize: 15),),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text("정기주주 총회에서 창업주의 재선임을 부결시켰음에도불구하고, 또다시 입시 주주총회에서 창업주와 분쟁을 하게 되었습니다. 이번 임시 주주총회에서도 주주 여러분들의 도움으로 반드시 승리할 것이며, 계속 지켜봐 주시고, 앞으로도 주주 여러분의 많은 관심과 성원 부탁드립니다.", style: TextStyle(color: Colors.white, fontSize: 15),),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Text('진행상황', style: TextStyle( color: Colors.white, fontSize: 15),),
                      Column(
                        children: [
                          new LinearPercentIndicator(
                            width: 300,
                            lineHeight: 5,
                            percent: 0.65,
                            backgroundColor: Colors.orange,
                            progressColor: Colors.deepOrange,
                          ),
                          Text('공개     주주제안       의결권 위임     주주총회', style: TextStyle(
                            color: Colors.white, fontSize: 15,
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 40, 20, 10),
                    child: Text('주주총회의안', style: TextStyle(color: Colors.white, fontSize: 32),),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 40, 5, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20 ,5),
                        child: Text('의결권권유 공시', style: TextStyle(color: Colors.white, fontSize: 24),),
                      ),
                    ),
                  ),
                ]
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('제1호 의안'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('사내이사 김달수 선임의 건', style: TextStyle(
                                  color: Colors.grey
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('김달수', style: TextStyle(
                              color: Colors.purple, fontSize: 10
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('제2호 의안'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('사외이사 고영상 선임의 건', style: TextStyle(
                                  color: Colors.grey
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('턴어라운드 조합', style: TextStyle(
                              color: Colors.purple, fontSize: 10
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('제3호 의안'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('사내이사 조상준 선임의 건', style: TextStyle(
                                  color: Colors.grey
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('턴어라운드 조합', style: TextStyle(
                              color: Colors.purple, fontSize: 10
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin:EdgeInsets.all(5) ,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('제4호 의안'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('사내이사 박우전 선임의 건', style: TextStyle(
                                  color: Colors.grey
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('김달수', style: TextStyle(
                              color: Colors.purple, fontSize: 10
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
class Sm_Page extends StatelessWidget {
  const Sm_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff503061),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 0, 30),
                    child: Text("저평가 해소를 위한 첫 걸음", style: TextStyle( color: Colors.white, fontSize: 48,),),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Hero(
                      tag: 'smimage',
                      child: CircleAvatar(
                          backgroundImage: AssetImage('sm_logo.png'),
                          radius: 10
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text("에스앰", style: TextStyle(color: Colors.white,fontSize: 15),),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                    child: Text("얼라인파트너스 | 주주총회 일정 : 22년 3월 31일", style: TextStyle(color: Colors.white, fontSize: 15),),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text("주주제안 감수선임에 유효의결권 중 81%의 압도적인 찬성표를 주시는 등 당사의 예상을 훨씬 뛰어넘는 많은 주주분들의 뜨거운 지지에 깊이 감사드리면서, 한편으로는 무거운 팩임감을 느낌니다. 당사는 장기투자자 이자 적극적 관여를 통한 가치창출을 추구하는 운용사로서 앞으로 에스엠 경영진과 지속적으로 소통하면서 에스앰에 실질적 변화가 있을수 있도록 끈질기게 치밀하게 실행해 나가겠습니다.", style: TextStyle(color: Colors.white, fontSize: 15),),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Text('진행상황', style: TextStyle( color: Colors.white, fontSize: 15),),
                        Column(
                          children: [
                            new LinearPercentIndicator(
                              width: 300,
                              lineHeight: 5,
                              percent: 1,
                              backgroundColor: Colors.orange,
                              progressColor: Colors.deepOrange,
                            ),
                            Text('공개     주주제안       의결권 위임     주주총회', style: TextStyle(
                              color: Colors.white, fontSize: 15,
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 40, 20, 10),
                        child: Text('주주총회의안', style: TextStyle(color: Colors.white, fontSize: 32),),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 40, 5, 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20 ,5),
                            child: Text('의결권권유 공시', style: TextStyle(color: Colors.white, fontSize: 24),),
                          ),
                        ),
                      ),
                    ]
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('제1호 의안'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('제 27기 재무제표 승인의 건', style: TextStyle(
                                    color: Colors.grey
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('이사회안', style: TextStyle(
                                color: Colors.purple, fontSize: 10
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('제2호 의안'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('사외이사 이장우 선임의 건', style: TextStyle(
                                    color: Colors.grey
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('이사회안', style: TextStyle(
                                color: Colors.purple, fontSize: 10
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('제3-1호 의안'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('감사 임기영 선임의 건', style: TextStyle(
                                    color: Colors.grey
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('이사회안', style: TextStyle(
                                color: Colors.purple, fontSize: 10
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:EdgeInsets.all(5) ,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('제3-2호 의안'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('감사 곽준호 선임의 건', style: TextStyle(
                                    color: Colors.grey
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('주주제안', style: TextStyle(
                                color: Colors.purple, fontSize: 10
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:EdgeInsets.all(5) ,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('제4호 의안'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('이사 보수한도 승인의 건', style: TextStyle(
                                    color: Colors.grey
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('이사회안', style: TextStyle(
                                color: Colors.purple, fontSize: 10
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:EdgeInsets.all(5) ,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('제5호 의안'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('감사 보수한도 승인의 건', style: TextStyle(
                                    color: Colors.grey
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('이사회안', style: TextStyle(
                                color: Colors.purple, fontSize: 10
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:EdgeInsets.all(5) ,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('제6호 의안'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('장관 일부 변경의 건 (철회)', style: TextStyle(
                                    color: Colors.grey
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('이사회안', style: TextStyle(
                                color: Colors.purple, fontSize: 10
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:EdgeInsets.all(5) ,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('제7호 의안'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('사내이사 최정민 선임의 건', style: TextStyle(
                                    color: Colors.grey
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text('이사회안', style: TextStyle(
                                color: Colors.purple, fontSize: 10
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
        ),
      );
  }
}
class Sago_Page extends StatelessWidget {
  const Sago_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff503061),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 30),
                  child: Text("당신이 참치캔에 추자해도 수익이 없는 진짜 이유", style: TextStyle( color: Colors.white, fontSize: 48,),),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Hero(
                    tag: 'sagoimage',
                    child: CircleAvatar(
                        backgroundImage: AssetImage('sago_logo.png'),
                        radius: 10
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text("사조산업", style: TextStyle(color: Colors.white,fontSize: 15),),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Text("소액주주연대 | 주주총호 ㅣ일정 : 22년 3월 24일", style: TextStyle(color: Colors.white, fontSize: 15),),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text("사조산업은 사조그룹의 지주사로, 사조대림, 사조요양, 사조씨푸드, 사조동아원의 상장 자회사를 비롯하여 20여개의 비상장 자회사를 통해 300억 ~ 500억의 순이익을 내는 아주 탄탄한 기업입니다.", style: TextStyle(color: Colors.white, fontSize: 15),),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Text('진행상황', style: TextStyle( color: Colors.white, fontSize: 15),),
                      Column(
                        children: [
                          new LinearPercentIndicator(
                            width: 300,
                            lineHeight: 5,
                            percent: 1,
                            backgroundColor: Colors.orange,
                            progressColor: Colors.deepOrange,
                          ),
                          Text('공개     주주제안       의결권 위임     주주총회', style: TextStyle(
                            color: Colors.white, fontSize: 15,
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 40, 20, 10),
                      child: Text('주주총회의안', style: TextStyle(color: Colors.white, fontSize: 32),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 40, 5, 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20 ,5),
                          child: Text('의결권권유 공시', style: TextStyle(color: Colors.white, fontSize: 24),),
                        ),
                      ),
                    ),
                  ]
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('제1호 의안'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('재무재표 승인의 건, 이익잉여금 처분 계산서 제외', style: TextStyle(
                                  color: Colors.grey
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('이사회안', style: TextStyle(
                              color: Colors.purple, fontSize: 10
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('제1-2-1호 의안'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('이익잉여금처분계산서 승인의 건, 주당 300원 배당', style: TextStyle(
                                  color: Colors.grey
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('이사회안', style: TextStyle(
                              color: Colors.purple, fontSize: 10
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('제1-2-2호 의안'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('이익잉여금처분계산서 승인의 건, 주당 1500원 배당', style: TextStyle(
                                  color: Colors.grey
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('주주제안', style: TextStyle(
                              color: Colors.purple, fontSize: 10
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin:EdgeInsets.all(5) ,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('제2호 의안'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('이사 보수 한도액 승인의 건', style: TextStyle(
                                  color: Colors.grey
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('이사회안', style: TextStyle(
                              color: Colors.purple, fontSize: 10
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}