

import 'package:flutter/material.dart';



class Expansionpanel extends StatefulWidget {
  Expansionpaneltate createState() => Expansionpaneltate();
}

class Expansionpaneltate extends State<Expansionpanel> {


  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
      Padding(
        padding: EdgeInsets.all(10.0),
        child: ExpansionPanelList.radio(
          initialOpenPanelValue:'Financial Services',
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              items[index].isExpanded = isExpanded;
            });
          },
          children: items.map((ExpansionpanelItem item) {
            return ExpansionPanelRadio(
              canTapOnHeader: true,
              value: item.title,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  selectedColor: Colors.redAccent,
                  selectedTileColor: Colors.red,
                    leading: item.leading,
                    title: Text(
                      item.title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[600]
                      ),
                    ));
              },
              //isExpanded: item.isExpanded,
              body: item.content,
            );
          }).toList(),
        ),
      ),

    );
  }
}

List<ExpansionpanelItem> items = <ExpansionpanelItem>[

  ExpansionpanelItem(
      isExpanded: false,
      title: 'Non Financial Services',
      content: Padding(
          padding: EdgeInsets.only( left: 20),
          child: Column(children: <Widget>[
            _posisi('Ritel'),
            _posisi('Consumer packaged goods'),
            _posisi('Manufacturing'),
            _posisi('Automotive'),
            _posisi('Supply chain and logistics'),
            _posisi('Energy'),
            _posisi('Healthcare and life sciences'),
_posisi('Media and entertainment'),
_posisi('Gaming'),
_posisi('Telecomunications'),
          ])),
      leading: Icon(Icons.computer)),

  ExpansionpanelItem(
      isExpanded: false,
      title: 'Financial Services',
      content: Padding(
          padding: EdgeInsets.only( left: 20),
          child: Column(children: <Widget>[
            _posisi('Banking'),
            _posisi('Multifinance'),
            _posisi('Fintech'),
            _posisi('Financial Lending'),
          ])),
      leading: Icon(Icons.manage_accounts)),

  ExpansionpanelItem(
      isExpanded: false,
      title: 'Goverment and public sector',
      content: Padding(
          padding: EdgeInsets.only( left: 20),
          child: Column(children: <Widget>[
            _posisi('Goverment'),
            _posisi('State and local goverment'),
_posisi('Education'),
_posisi('Education technology'),
          ])),
      leading: Icon(Icons.comment_outlined)),

];

Container _judulposisi (){
  return Container(
    width: 1400,
    child: Text(
      'Position: ',
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

ListTile _posisi(String namaposisi) {
  return ListTile(
    leading: Container(
        padding: EdgeInsets.only(top: 7),
        child: Icon(
          Icons.circle,
          size: 10,
          color: Colors.black,
        )),
    title: Text(
      namaposisi,
      style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
          letterSpacing: 1.2),
    ),
  );
}

class ExpansionpanelItem {
  ExpansionpanelItem(
      {required this.isExpanded,
        required this.title,
        required this.content,
        required this.leading});
  bool isExpanded;
  final String title;
  final Widget content;
  final Icon leading;
}





