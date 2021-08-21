import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Accordion extends StatefulWidget {
  final String title;
  final content;

  Accordion(this.title, this.content);
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(children: [
        ListTile(
          title: Text(widget.title),
          trailing: IconButton(
            icon: Icon(
                _showContent ? Icons.arrow_drop_up : Icons.arrow_drop_down),
            onPressed: () {
              setState(() {
                _showContent = !_showContent;
              });
            },
          ),
        ),
        _showContent
            ?
            Column(
              children : [
                Column(
                  children:[
                    Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(right:10),
                        child:Text(
                            '2021-08-22',
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize:10))
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child:Row(
                            children : [
                              Container(
                                  padding: EdgeInsets.only(left: 12,right:10),
                                  child:Text('하이')
                              ),
                              IconButton(
                                onPressed: () => print('request audio api'),
                                tooltip: 'Audio',
                                icon: SvgPicture.asset(
                                  'imgs/audio.svg',
                                  placeholderBuilder: (BuildContext context) => Container(
                                      child: const CircularProgressIndicator()
                                  ),
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 10,right:12),
                                  child:Text('바이'),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide( // POINT
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                    ),
                                  )
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 15,right:10),
                                  child:Text('하이')
                              ),
                              IconButton(
                                onPressed: () => print('request audio api'),
                                tooltip: 'Audio',
                                icon: SvgPicture.asset(
                                  'imgs/audio.svg',
                                  placeholderBuilder: (BuildContext context) => Container(
                                      child: const CircularProgressIndicator()
                                  ),
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 10,right:15),
                                  child:Text('바이')
                              )
                            ])
                    ),
                    Container(
                      child : Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () => print('request audio api'),
                            tooltip: 'Audio',
                            icon: SvgPicture.asset(
                              'imgs/pdf.svg',
                              placeholderBuilder: (BuildContext context) => Container(
                                  child: const CircularProgressIndicator()
                              ),
                            ),
                          ),
                            onPressed: () => print('request audio api'),
                            tooltip: 'Audio',
                            icon: SvgPicture.asset(
                              'imgs/mp3.svg',
                              placeholderBuilder: (BuildContext context) => Container(
                                  child: const CircularProgressIndicator()
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () => print('request audio api'),
                            tooltip: 'Audio',
                            icon: SvgPicture.asset(
                              'imgs/delete.svg',
                              placeholderBuilder: (BuildContext context) => Container(
                                  child: const CircularProgressIndicator()
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                  ]
              ),
              Container(
                child : SingleChildScrollView(
                    scrollDirection: Axis.vertical
                ),
              )
              ]
        )
            : Container()

      ]),
    );
  }
}