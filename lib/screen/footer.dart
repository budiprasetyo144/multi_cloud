import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height * 0.68,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: screenSize.height * 0.07,),
          Container(
            width: screenSize.width,
            height: screenSize.height * 0.45,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 5),
                    width: screenSize.width*0.2,
                    height: screenSize.height * 0.35,

                    child: Column(
                      children: [
                        Container(
                          width: screenSize.width*0.12,
                          height: screenSize.height*0.08,
                          decoration: const BoxDecoration(
                            //color: Colors.lightBlueAccent,
                            image: DecorationImage(image: AssetImage('assets/logo/logo-eksad.png'),fit: BoxFit.fill)
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: screenSize.width*0.15,
                          height: screenSize.height*0.04,
                          //color: Colors.blue,
                          child: const Center(
                            child: Text('  Your one stop IT Solution',
                              textAlign: TextAlign.right,
                              style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w500,letterSpacing: 1.5,fontSize: 16),),
                          ),
                        ),
                        Spacer(flex: 3,),
                        Container(
                          width: screenSize.width*0.14,
                          height: screenSize.height*0.03,
                          //color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.linkedinIn,size: 30,),iconSize: 20,),
                              IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.facebook,size: 30,),iconSize: 20,),
                              IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.instagram,size: 30,),iconSize: 20,),
                              IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.youtube,size: 30,),iconSize: 20,)

                            ],
                          ),
                        ),
                        Spacer(flex: 8,)
                      ],
                    )
                ),
                Container(
                    width: screenSize.width*0.1,
                    height: screenSize.height * 0.35,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: screenSize.width*0.1,
                          height: screenSize.height * 0.04,
                          child: Text(' Sitemap',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,letterSpacing: 1.5),),
                        ),
                        Spacer(flex: 6,),
                        TextButton(onPressed: (){}, child: Text('About',style: TextStyle(color: Colors.black,decoration: TextDecoration.underline,fontSize: 17),)),
                        Spacer(),
                        TextButton(onPressed: (){}, child: Text('Solutions',style: TextStyle(color: Colors.black,decoration: TextDecoration.underline,fontSize: 17),)),
                        Spacer(),
                        TextButton(onPressed: (){}, child: Text('Portfolio',style: TextStyle(color: Colors.black,decoration: TextDecoration.underline,fontSize: 17),)),
                        Spacer(),
                        TextButton(onPressed: (){}, child: Text('Career',style: TextStyle(color: Colors.black,decoration: TextDecoration.underline,fontSize: 17),)),
                        Spacer(),
                        TextButton(onPressed: (){}, child: Text('Blog',style: TextStyle(color: Colors.black,decoration: TextDecoration.underline,fontSize: 17),)),
                        Spacer(),
                        TextButton(onPressed: (){}, child: Text('Contact Us',style: TextStyle(color: Colors.black,decoration: TextDecoration.underline,fontSize: 17),)),
                        Spacer(),

                      ],
                    )
                ),
                Container(
                    width: screenSize.width*0.13,
                    height: screenSize.height * 0.35,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: screenSize.width*0.13,
                          height: screenSize.height * 0.04,
                          child: Text(' Solutions',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,letterSpacing: 1.5),),
                        ),
                        Spacer(flex: 4,),
                        TextButton(onPressed: (){}, child: Text('Software as a Service',style: TextStyle(color: Colors.black,decoration: TextDecoration.underline,fontSize: 17),)),
                        Spacer(),
                        TextButton(onPressed: (){}, child: Text('Cloud',style: TextStyle(color: Colors.black,decoration: TextDecoration.underline,fontSize: 17),)),
                        Spacer(),
                        TextButton(onPressed: (){}, child: Text('IT Resource',style: TextStyle(color: Colors.black,decoration: TextDecoration.underline,fontSize: 17),)),
                        Spacer(flex: 13,),

                      ],
                    )
                ),
                Container(
                    width: screenSize.width*0.2,
                    height: screenSize.height * 0.37,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: screenSize.width*0.2,
                          height: screenSize.height * 0.04,
                          child: Text(' Contact',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,letterSpacing: 1.5),),
                        ),
                        Spacer(),
                        Container(
                          width: screenSize.width*0.155,
                          child: ListTile(
                              leading: Icon(
                                Icons.phone,
                                size: 25,
                              ),
                              title: TextButton(onPressed: (){},
                                child: Text('(021) 5795 - 8040',
                                  style: TextStyle(
                                    fontSize: 17,
                                      color: Colors.black87,
                                  ),
                                ),
                              ),

                            ),
                        ),

                        Container(
                          width: screenSize.width*0.15,
                          child: ListTile(
                            leading: Icon(
                              Icons.mail,
                              size: 25,
                            ),
                            title: TextButton(onPressed: (){},
                              child: Text('info@eksad.com',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black87
                                ),
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.location_on,
                            size: 30,
                          ),
                          title: Text('PT. Tiga Daya Digital Indonesia The East '
                            'Tower 19th Floor Jl. Dr. Ide Anak Agung '
                            'Gde Agung Blok E3.2 '
                            'Mega Kuningan, Jakarta Selatan 12950',
                            style: TextStyle(
                              fontSize: 17,
                              height: 1.2
                            ),
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
          const Divider(height: 3,thickness: 3,),
          SizedBox(
            width: screenSize.width,
            height: screenSize.height * 0.13,
            child: const Center(child: Text('PT. Tiga Daya Digital Indonesia © 2018, All Rights Reserved',style: TextStyle(letterSpacing: 1.3,height: 1.4,fontSize: 17),)),
          )
        ],
      )
    );
  }
}
