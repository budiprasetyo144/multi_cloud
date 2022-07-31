import 'package:flutter/material.dart';
import 'package:mcs_flutter/widget/container_post.dart';
import 'package:mcs_flutter/text/text_post.dart';
import 'package:mcs_flutter/screen/post_body.dart';
import 'package:mcs_flutter/widget/responsive.dart';
import 'package:mcs_flutter/screen/appbar.dart';
import 'package:mcs_flutter/main.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppbarSmallSize(screenSize)
          : AppbarFullSize(screenSize, context),
      body: ListView(
        children: [
          Container(
            //height: 800,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 40,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 56,
                      ),
                      Container(
                          height: 20,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyApp(),
                                  ),
                                );
                              },
                              child: Text(
                                'Home',
                                style: TextStyle(color: Colors.red,fontSize: 16),
                              ))),
                      Container(
                        padding: EdgeInsets.only(top: 1),
                        height: 20,
                        child: Text(
                          ' > ',
                          style: TextStyle(color: Colors.red,fontSize: 16),
                        ),
                      ),
                      Container(
                        height: 20,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Post(),
                                ),
                              );
                            },
                            child: Text(
                              'News',
                              style: TextStyle(color: Colors.red,fontSize: 16),
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 800,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(50),
                    crossAxisSpacing: 50,
                    mainAxisSpacing: 50,
                    crossAxisCount: 3,
                    children: <Widget>[
                      GridContainer(
                        HeadGrid: headgrid1,
                        ImageGrid: 'assets/images/xcxcxc.jpg',
                        BodyGrid: bodygrid1,
                        arah: PostBody(
                          Image: 'assets/images/xcxcxc.jpg',
                          HeadText: headgrid1,
                          Tanggal: tanggal,
                          Bodyfull: bodyfull1,
                          Urutan: urutan1,
                        ),
                      ),
                      GridContainer(
                        HeadGrid: headgrid2,
                        ImageGrid: 'assets/images/vbvb.jpg',
                        BodyGrid: bodygrid2,
                        arah: PostBody(
                          Image: 'assets/images/vbvb.jpg',
                          HeadText: headgrid2,
                          Tanggal: tanggal,
                          Bodyfull: bodyfull2,
                          Urutan: urutan2,
                        ),
                      ),
                      GridContainer(
                        HeadGrid: headgrid3,
                        ImageGrid: 'assets/images/cvcvcv.jpg',
                        BodyGrid: bodygrid3,
                        arah: PostBody(
                          Image: 'assets/images/cvcvcv.jpg',
                          HeadText: headgrid3,
                          Tanggal: tanggal,
                          Bodyfull: bodyfull3,
                          Urutan: urutan3,
                        ),
                      ),
                      GridContainer(
                        HeadGrid: headgrid4,
                        ImageGrid: 'assets/images/partner eksad.jpg',
                        BodyGrid: bodygrid4,
                        arah: PostBody(
                          Image: 'assets/images/partner eksad.jpg',
                          HeadText: headgrid4,
                          Tanggal: tanggal4,
                          Bodyfull: bodyfull4,
                          Urutan: urutan4,
                        ),
                      ),
                      GridContainer(
                        HeadGrid: headgrid5,
                        ImageGrid: 'assets/images/problem solution.jpg',
                        BodyGrid: bodygrid5,
                        arah: PostBody(
                          Image: 'assets/images/keuntungan.jpg',
                          HeadText: headgrid5,
                          Tanggal: tanggal5,
                          Bodyfull: bodyfull5,
                          Urutan: urutan5,
                        ),
                      ),
                      GridContainer(
                        HeadGrid: headgrid6,
                        ImageGrid: 'assets/images/1.jpeg',
                        BodyGrid: bodygrid6,
                        arah: PostBody(
                          Image: 'assets/images/1.jpeg',
                          HeadText: headgrid6,
                          Tanggal: tanggal6,
                          Bodyfull: bodyfull6,
                          Urutan: urutan6,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
