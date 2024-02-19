import 'dart:ui';
import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}


class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b1b1b),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 4700,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: OverflowBox(
                    maxWidth: double.infinity,
                    child: Transform.translate(
                      offset: Offset(0, -2200),
                      child: Transform.rotate(
                        angle: -0.39,
                        child: Container(
                          width: 2500,
                          height: 426,
                          decoration: BoxDecoration(
                              color: Color(0xff383838)
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 1200),
                    child: Scaffold(
                      extendBodyBehindAppBar: true,
                      backgroundColor: Colors.transparent,
                      // backgroundColor: Color(0xff1b1b1b),
                      appBar:  PreferredSize(
                        preferredSize: Size.fromHeight(100),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                child: Text(
                                  '_welcome',
                                  style: TextStyle(
                                    color: Color(0xFFFEFEFE),
                                    fontSize: 24,
                                    fontFamily: 'Pretendard Variable',
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            )
                          ]
                        ),
                      ),
                      body: SizedBox(
                        height: 4700,
                        child: Center(
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(maxWidth: 768),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 100,),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 32),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [Text(
                                            'Developer Junwoolee’s \nPortfolio',
                                            style: TextStyle(
                                              color: Color(0xFFFEFEFE),
                                              fontSize: 36,
                                              fontFamily: 'Pretendard Variable',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                            SizedBox(height: 24,),
                                            Text(
                                              '일단 이것저것 좋아합니다.\n폭 넚은 경험을 중시하는 개발자입니다.',
                                              style: TextStyle(
                                                color: Color(0xFFFEFEFE),
                                                fontSize: 18,
                                                fontFamily: 'Pretendard Variable',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),],
                                        ),
                                      ),
                                      SizedBox(height: 100,),
                                      Container(
                                        width: 768,
                                        height: 484,
                                        padding: EdgeInsets.all(52),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ArticleList(),
                                            SizedBox(height: 38,),
                                            ArticleList()
                                          ],
                                        ),
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF1B1B1B),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          shadows: [
                                            BoxShadow(
                                              color: Color(0x0FFFFFFF),
                                              blurRadius: 30,
                                              offset: Offset(0, 0),
                                              spreadRadius: 0,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 400,),
                                      Container(
                                        width: 720, // 이미지의 가로 크기 설정
                                        height: 624, // 이미지의 세로 크기 설정
                                        child:  Image.asset("assets/ability.png"),
                                      ),
                                      SizedBox(height: 240,),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 8),
                                        child: Text(
                                          'Projects',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontFamily: 'Pretendard Variable',
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 34,),
                                      GridView.count(
                                        crossAxisCount: 2,
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        padding: EdgeInsets.symmetric(horizontal: 0), // 그리드뷰 주변의 마진과 패딩 제거
                                        mainAxisSpacing: 8,
                                        crossAxisSpacing: 8,
                                        childAspectRatio: 352/268,
                                        children: [
                                          // 그리드 아이템 추가
                                          ProjectItem(
                                            title: "My Project",
                                            description: "-long long des\n long long des\n long long des",
                                            imageAdress: "https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg",
                                            maskIntensity: 0.7,
                                            connectUrl: "https://www.youtube.com/watch?v=dYRs7Q1vfYI",
                                          ),
                                          ProjectItem(
                                            title: "My Project",
                                            description: "-long long des\n-long long des\n-long long des",
                                            imageAdress: "https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg",
                                            maskIntensity: 0.7,
                                            connectUrl: "https://www.youtube.com/watch?v=dYRs7Q1vfYI",
                                          ),
                                          ProjectItem(
                                            title: "My Project",
                                            description: "-long long des\n long long des\n long long des",
                                            imageAdress: "https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg",
                                            maskIntensity: 0.7,
                                            connectUrl: "https://www.youtube.com/watch?v=dYRs7Q1vfYI",
                                          ),
                                          ProjectItem(
                                            title: "My Project",
                                            description: "-long long des\n long long des\n long long des",
                                            imageAdress: "https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg",
                                            maskIntensity: 0.7,
                                            connectUrl: "https://www.youtube.com/watch?v=dYRs7Q1vfYI",
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 86,),
                                      Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'And... more!\n',
                                              style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF666666),
                                                fontFamily: 'Pretendard Variable',
                                              ),
                                            ),
                                            TextSpanLinK(
                                              title: '주기율표 암기 도미',
                                              url: 'https://example.com',
                                            ),
                                            TextSpanLinK(
                                              title: '저항표 암기 도우미',
                                              url: 'https://example.com',
                                            ),
                                            TextSpanLinK(
                                              title: 'ChatCAPT',
                                              url: 'https://example.com',
                                            ),
                                            TextSpanLinK(
                                              title: '돼지 키우기',
                                              url: 'https://example.com',
                                            ),
                                            TextSpanLinK(
                                              title: 'Just a ball',
                                              url: 'https://example.com',
                                            ),
                                            TextSpanLinK(
                                              title: 'Two',
                                              url: 'https://example.com',
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Transform.translate(
                                  offset: Offset(240,660),
                                  child: Container(
                                    padding: EdgeInsets.all(30),
                                    height: 220,
                                    width: 362,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Color(0xffd9d9d9)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '이준우',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24,
                                            fontFamily: 'Pretendard Variable',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(height: 18,),
                                        Row(
                                          children: [
                                            Transform.translate(
                                                offset: Offset(0,2),
                                              child: Icon(Icons.email_outlined),
                                            ),
                                            SizedBox(width: 8,),
                                            Text(
                                              'junwoolee0813@gmail.com',
                                              style: TextStyle(
                                                color: Color(0xFF2E2E2E),
                                                fontSize: 18,
                                                fontFamily: 'Pretendard Variable',
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Transform.translate(
                                              offset: Offset(0,2),
                                              child: Icon(Icons.phone_outlined),
                                            ),
                                            SizedBox(width: 8,),
                                            Text(
                                              '010-9795-2007',
                                              style: TextStyle(
                                                color: Color(0xFF2E2E2E),
                                                fontSize: 18,
                                                fontFamily: 'Pretendard Variable',
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Transform.translate(
                                              offset: Offset(0,2),
                                              child: Icon(Icons.home_outlined),
                                            ),
                                            SizedBox(width: 8,),
                                            Text(
                                              'Seoul, Korea',
                                              style: TextStyle(
                                                color: Color(0xFF2E2E2E),
                                                fontSize: 18,
                                                fontFamily: 'Pretendard Variable',
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                )
                              ),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Transform.translate(
                                    offset: Offset(300,460),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                                      height: 92,
                                      width: 396,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          color: Color(0xffd9d9d9)
                                      ),
                                      child: Text(
                                        '내가 어떤 것을 쓰는지 어떤 것을 보는지, 내가 어떤 생각을 어떻게 하는지 ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily: 'Pretendard Variable',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  ProjectItem({
    super.key,
    required this.title,
    required this.description,
    required this.imageAdress,
    required this.maskIntensity,
    required this.connectUrl
  });

  String title;
  String description;
  String imageAdress;
  double maskIntensity;
  String connectUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 352,
          height: 269,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageAdress),
              fit: BoxFit.cover, // 이미지를 가득 채우도록 설정
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Material(
          child: InkWell(
            onTap: (){
              js.context.callMethod('open', [connectUrl]);
            },
            borderRadius: BorderRadius.circular(16),
            child: Ink(
              width: 352,
              height: 269,
              // padding: EdgeInsets.all(24),
              decoration: ShapeDecoration(
                color: Colors.black87.withOpacity(maskIntensity),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 18,),
                        Text(
                          description,
                          style: TextStyle(
                            color: Color(0xFFDBDBDB),
                            fontSize: 16,
                            fontFamily: 'Pretendard Variable',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          borderRadius: BorderRadius.circular(16),
          color: Colors.transparent,
        )
      ],
    );

  }
}

class ArticleList extends StatelessWidget {
  const ArticleList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '내가 본 글',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Pretendard Variable',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        SizedBox(height: 14,),
        Text(
          '젠슨 황 “프로그래머 될이러니저러...',
          style: TextStyle(
            color: Color(0xFFDBDBDB),
            fontSize: 18,
            fontFamily: 'Pretendard Variable',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        SizedBox(height: 6,),
        Text(
          '젠슨 황 “프로그래머 될이러니저러...',
          style: TextStyle(
            color: Color(0xFFDBDBDB),
            fontSize: 18,
            fontFamily: 'Pretendard Variable',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        SizedBox(height: 6,),
        Text(
          '젠슨 황 “프로그래머 될이러니저러...',
          style: TextStyle(
            color: Color(0xFFDBDBDB),
            fontSize: 18,
            fontFamily: 'Pretendard Variable',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        SizedBox(height: 6,),
        Text(
          '젠슨 황 “프로그래머 될이러니저러...',
          style: TextStyle(
            color: Color(0xFFDBDBDB),
            fontSize: 18,
            fontFamily: 'Pretendard Variable',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ],
    );
  }
}

class TextSpanLinK extends StatelessWidget {
  final String title;
  final String url;

  TextSpanLinK({required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$title - ',
              style: TextStyle(
                color: Color(0xFF666666),
                fontSize: 18,
                fontFamily: 'Pretendard Variable',
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: 'link',
              style: TextStyle(
                color: Color(0xFF666699),
                fontSize: 18,
                fontFamily: 'Pretendard Variable',
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
      onTap: () async {
        js.context.callMethod('open', [url]);
      },
    );
  }
}