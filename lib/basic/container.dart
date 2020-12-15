import 'package:flutter/material.dart';

///基本属性的使用
class ContainerWidget extends StatelessWidget {
  final String _title = '将进酒';
  final String _author = '李白';

  final TextStyle _textStyle =
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608045865662&di=c8a222741950c2684178bbd7de57d484&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Faaf20e0dcfad491adf1b378922b6937d58a0b02911bd3e-ZELWJt_fw658'),
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
                //图片滤镜
                colorFilter: ColorFilter.mode(
                    Colors.indigoAccent.withOpacity(0.5),
                    BlendMode.hardLight))),
        //Row横向排列
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   '《$_title》-$_author。君不见黄河之水天上来，奔流到海不复回。'
            //   '君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月',
            //   style: _textStyle,
            //   textAlign: TextAlign.left,
            //   maxLines: 3,
            //   overflow: TextOverflow.ellipsis,
            // ),
            Container(
              width: 90.0,
              height: 90.0,
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              //使用BoxDecoration设置背景颜色、边框、阴影等效果
              decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  //设置边框
                  border: Border.all(
                      color: Colors.yellowAccent,
                      width: 1.0,
                      style: BorderStyle.solid),
                  //设置圆角
                  // borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  // borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(60.0),
                  //     bottomLeft: Radius.circular(60.0)),
                  //设置阴影
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1.0, 1.0),
                        color: Color.fromRGBO(3, 54, 255, 1.0),
                        blurRadius: 10.0)
                  ],
                  shape: BoxShape.circle,
                  //渐变
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 28, 128, 1.0)
                  ])),
              child: Icon(
                Icons.history,
                color: Colors.deepPurpleAccent,
              ),
            )
          ],
        ));
  }
}
