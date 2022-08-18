import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Expansionpanel extends StatefulWidget {
  Expansionpaneltate createState() => Expansionpaneltate();
}

class Expansionpaneltate extends State<Expansionpanel> {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ExpansionPanelList.radio(
          initialOpenPanelValue: 'Financial Services',
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              items[index].isExpanded = isExpanded;
            });
          },
          children: items.map((ExpansionpanelItem item) {
            return ExpansionPanelRadio(
              backgroundColor: Colors.grey[200],
              canTapOnHeader: true,
              value: item.title,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                    leading: item.leading,
                    title: Text(
                      item.title,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
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
          padding: const EdgeInsets.only(left: 20),
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
      leading: const Icon(Icons.computer)),
  ExpansionpanelItem(
      isExpanded: false,
      title: 'Financial Services',
      content: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(children: <Widget>[
            _posisi('Banking'),
            _posisi('Multifinance'),
            _posisi('Fintech'),
            _posisi('Financial Lending'),
          ])),
      leading: const Icon(Icons.manage_accounts)),
  ExpansionpanelItem(
      isExpanded: false,
      title: 'Goverment and public sector',
      content: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(children: <Widget>[
            _posisi('Goverment'),
            _posisi('State and local goverment'),
            _posisi('Education'),
            _posisi('Education technology'),
          ])),
      leading: const Icon(Icons.comment_outlined)),
];

Container _judulposisi() {
  return Container(
    width: 1400,
    child: Text(
      'Position: ',
      textAlign: TextAlign.start,
      style: GoogleFonts.poppins(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

ListTile _posisi(String namaposisi) {
  return ListTile(
    leading: Container(
        padding: const EdgeInsets.only(top: 7),
        child: const Icon(
          Icons.circle,
          size: 10,
          color: Colors.black,
        )),
    title: Text(
      namaposisi,
      style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500, fontSize: 16, letterSpacing: 1.2),
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
