import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
void main(){
  runApp(MaterialApp(home: ReadmoreLess(),));
}

class ReadmoreLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('expansion card'),),
      body: const Column(
        children: [
          ReadMoreText(
            'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface. ',
            trimLines: 2,
            style: TextStyle(color: Colors.black),
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: '...Read more',
            trimExpandedText: ' Less',
          ),
          ReadMoreText(
            'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface. ',
            trimLines: 2,
            style: TextStyle(color: Colors.black),
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: '...Read more',
            trimExpandedText: ' Less',
          ),
          ReadMoreText(
            'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface. ',
            trimLines: 2,
            style: TextStyle(color: Colors.black),
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: '...Read more',
            trimExpandedText: ' Less',
          ),
          ReadMoreText(
            'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface. ',
            trimLines: 2,
            style: TextStyle(color: Colors.black),
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: '...Read more',
            trimExpandedText: ' Less',
          ),
        ],
      ),
    );
  }
}
