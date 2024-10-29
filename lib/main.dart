import 'package:flutter/material.dart';
import 'package:lab1/DetailPage.dart';
import 'package:lab1/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFF556B2F)), // โทนสีเขียวขี้ม้า
        useMaterial3: true,
      ),
      home: const MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Student> datas = [
      Student('นายเจษฎา ลีรัตน์', '643450067-0', 'assets/pa.jpg', "โสด",
          "mickey@kkumail.com", "https://www.facebook.com/pat.loveasd/about"),
      Student('นายณัฐกานต์ อินทรพานิชย์', '643450072-7', 'assets/w.jpg', "โสด",
          "mickey@kkumail.com", "https://www.facebook.com/wai.nuttakan"),
      Student(
          'นายธนาธิป เตชะ',
          '643450076-9',
          'assets/jjj.jpg',
          "โสด",
          "mickey@kkumail.com",
          "https://www.facebook.com/profile.php?id=100011086212292"),
      Student(
          'นายพีระเดช โพธิ์หล้า',
          '643450082-4',
          'assets/p.jpg',
          "มีแฟนแล้ว",
          "mickey@kkumail.com",
          "https://www.facebook.com/peeradech8888"),
      Student(
          'นายวิญญู พรมภิภักดิ์',
          '643450084-0',
          'assets/m.jpg',
          "มีแฟนแล้ว",
          "winyu.p@kkumail.com",
          "https://www.facebook.com/profile.php?id=100014625613598"),
      Student('นายเทวารัณย์ ชัยกิจ', '643450324-6', 'assets/pr.jpg', "โสด",
          "mickey@kkumail.com", "https://www.facebook.com/rungoodnam"),
      Student('นายศุภชัย แสนประสิทธิ์', '643450332-7', 'assets/b.jpg', "โสด",
          "mickey@kkumail.com", "https://www.facebook.com/beam.supachai.9"),
      Student(
          'นายธนรัตน์ บ้านสระ',
          '643450658-7',
          'assets/bom.jpeg',
          "มีแฟนแล้ว",
          "mickey@kkumail.com",
          "https://www.facebook.com/profile.php?id=100013270898676"),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF556B2F), // สีเขียวขี้ม้า
        title: const Text(
          "My App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, index) {
          return displayItem(context: context, student: datas[index]);
        },
      ),
    );
  }

  Widget displayItem(
      {required BuildContext context, required Student student}) {
    final isHighlighted = student.name == 'นายณัฐกานต์ อินทรพานิชย์';

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(data: student),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
        decoration: BoxDecoration(
          color: Color(0xFF8FBC8F), // โทนสีเขียวขี้ม้าอ่อน
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                width: 80,
                image: AssetImage(student.image),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight:
                        isHighlighted ? FontWeight.bold : FontWeight.normal,
                    color: isHighlighted ? Colors.redAccent : Color(0xFF2E8B57),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  student.studentid,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF2E8B57),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
