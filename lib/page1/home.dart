import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../common/noon_appbar.dart';
import '../common/drawer.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: new SideBar(),
      appBar: new AppBar1(),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.black12, BlendMode.srcOver),
              child: Container(
                //color: Colors.black12,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                child: Image.asset('imgs/main.jpg'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top:(MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height -
                      MediaQuery.of(context).padding.top) * 0.05,),
              alignment: Alignment.center,
              child: GestureDetector(
                behavior:HitTestBehavior.translucent,
                onTap: () => Navigator.pushNamed(context, '/pick'),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.32,
                  height: (MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height -
                      MediaQuery.of(context).padding.top) * 0.12,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        HexColor("#0668C1").withOpacity(0.66),
                        HexColor("#11E2FF").withOpacity(0.51),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(5, 5),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '사진 가져오기',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.5,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 7, left: 7),
              margin: EdgeInsets.only(
                top:(MediaQuery.of(context).size.height -
                    AppBar().preferredSize.height -
                    MediaQuery.of(context).padding.top) * 0.04,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    behavior:HitTestBehavior.translucent,
                    onTap: () => Navigator.pushNamed(context, '/recently'),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.32,
                      height: (MediaQuery.of(context).size.height -
                          AppBar().preferredSize.height -
                          MediaQuery.of(context).padding.top) * 0.12,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            HexColor("#0668C1").withOpacity(0.66),
                            HexColor("#11E2FF").withOpacity(0.51),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(5, 5),
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          '최근 조회한 단어',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.5,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    behavior:HitTestBehavior.translucent,
                    onTap: () => Navigator.pushNamed(context, '/mynote'),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.32,
                      height: (MediaQuery.of(context).size.height -
                          AppBar().preferredSize.height -
                          MediaQuery.of(context).padding.top) * 0.12,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            HexColor("#0668C1").withOpacity(0.66),
                            HexColor("#11E2FF").withOpacity(0.51),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(5, 5),
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          '나의 단어장',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.5,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                  // margin: EdgeInsets.only(
                  //   top:(MediaQuery.of(context).size.height -
                  //       AppBar().preferredSize.height -
                  //       MediaQuery.of(context).padding.top) * 0.02),

                  alignment: Alignment.center,
                  child: IconButton(
                      onPressed: () => {print('open camera')},
                      tooltip: 'camera',
                      icon: SvgPicture.asset(
                        'imgs/diaphragm.svg',
                      placeholderBuilder: (BuildContext context) => Container(
                          child: const CircularProgressIndicator()
                      ),
                      height: (MediaQuery.of(context).size.height -
                          AppBar().preferredSize.height -
                          MediaQuery.of(context).padding.top) * 0.12,
                        fit: BoxFit.fitHeight,
                  ),
                )
            )
          ),
        ],
      ),
    );
  }
}
