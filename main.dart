import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Group member information"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
              context: context,
              color: Colors.redAccent,
              blocktext: "นายณัฐวัตร วิลัย",
              imgPath:
                  "https://scontent.fbkk5-3.fna.fbcdn.net/v/t39.30808-6/283917183_1915172192012669_129191124400808929_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHENM8iESsdESfAjgmCCCcP-8APmxhPsGL7wA-bGE-wYk-PI5kZ0VAxjlACAb2w75BI5hAnRr_cOnGNO2p_QSWX&_nc_ohc=MDovlkKLGbkAX_vM6pT&_nc_ht=scontent.fbkk5-3.fna&oh=00_AfCLQLNQqhSVc0xyAkG_rM-PgU6hwXmFzMdiBZAcGCelSg&oe=63C1BA44",
              nickname: "( บอม )",
              stuID: "รหัสนักศึกษา : 633410013-6",
              contact: "FB: Nattawat Wilai",
              epigram: "การมีแฟนที่ดี คือการที่มีแฟนเป็นเรา"),
          Card(
              context: context,
              color: Colors.redAccent,
              blocktext: "นายธนากร วานิช",
              imgPath:
                  "https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.6435-9/193949079_2957356311175525_3090536785653662567_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeH4rxPKrG1J7xXGjSFERk4sx6678VL-UTLHrrvxUv5RMmzpDltsomN0RgAgmOvvZHIkzkJNKzbuw9k9pulmzIpe&_nc_ohc=g6QDzuDLYS8AX-mgu6x&_nc_ht=scontent.fbkk5-6.fna&oh=00_AfBGAycI5S8KWGAC8ciDodA7Y7pAskiPo9yXsH3CxzxzbA&oe=63E61D8E",
              nickname: "( เขต )",
              stuID: "รหัสนักศึกษา : 633410014-4",
              contact: "FB: นาย ธนา",
              epigram: "ที่ต้องนั่งตลอด เพราะมีคนบอกลุคดูเจ้าชู้"),
          Card(
              context: context,
              color: Colors.redAccent,
              blocktext: "นายจีรศักดิ์ ผาลี",
              imgPath:
                  "https://scontent.fbkk5-3.fna.fbcdn.net/v/t1.6435-9/175403796_2861572827431910_9105920202074437328_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFg5938XmuFowarSePB0ZOTpsgtWCGfRx6myC1YIZ9HHu09k3YnJqhZPiCdUmuaDUToiRZ2V_cJc9Z8jIVndqjU&_nc_ohc=GLL_WBI0sD8AX9tiKKy&tn=DIZHCxRXZgkrCjdK&_nc_ht=scontent.fbkk5-3.fna&oh=00_AfDcM3EDBlSxrxs9_fXSDD5iociOGhmL8HtJdnHiEuq-fw&oe=63E6060A",
              nickname: "( โจนัส )",
              stuID: "รหัสนักศึกษา : 633410009-7",
              contact: "FB: Jeerasak Phalee",
              epigram: " ไม่เคยวิ่งตามใคร เพราะขับรถไปหาอย่างเดียว "),
          Card(
              context: context,
              color: Colors.redAccent,
              blocktext: "นายอนุศิษฏ์ กิจอุดมสุข",
              imgPath:
                  "https://scontent.fbkk5-4.fna.fbcdn.net/v/t39.30808-6/320080211_461234409539240_4517276207234390456_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeEL_HnKd0rhCwQXsud16LaRYYMKORd06WFhgwo5F3TpYTcv_0lIQblX5F-P7veX0OTC4VtieIfbARNyhl5Vz-U8&_nc_ohc=DkBfNsv6yKUAX9tbYfM&_nc_ht=scontent.fbkk5-4.fna&oh=00_AfDO95uuYLjKuH8SzsvD8KtZFOUPObIUjmN6Y_L14nyHZQ&oe=63C2EE52",
              nickname: " ( ขนุน ) ",
              stuID: "รหัสนักศึกษา : 633410036-4",
              contact: "FB: Kanun Anusit",
              epigram: " เรียนมา 10 ปี รู้แล้วถนัดอะไร... ถนัดยก "),
        ],
      ),
    );
  }

  Widget Card(
      {required BuildContext context,
      required Color color,
      required String blocktext,
      required String imgPath,
      required String nickname,
      required String stuID,
      required String contact,
      required String epigram}) {
    return Container(
      width: 250,
      color: Colors.white,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                      name: blocktext,
                      imPath: imgPath,
                      nickname: nickname,
                      id: stuID,
                      contact: contact,
                      epigram: epigram)));
        },
        child: Column(
          children: [
            SizedBox(
                child: CircleAvatar(
                    radius: 70, backgroundImage: NetworkImage(imgPath))),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: color,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(child: Text(blocktext))),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {required this.name,
      required this.nickname,
      required this.imPath,
      required this.id,
      required this.contact,
      required this.epigram});
  String name;
  String nickname;
  String imPath;
  String id;
  String contact;
  String epigram;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Group member information"),
        ),
        body: Center(
            child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            CircleAvatar(radius: 140, backgroundImage: NetworkImage(imPath)),
            const Padding(padding: EdgeInsets.all(10)),
            Text(name),
            Text(id),
            Text(nickname),
            Text(contact),
            const Padding(padding: EdgeInsets.all(10)),
            const Text("คำคม"),
            Text(epigram),
          ],
        )));
  }
}
