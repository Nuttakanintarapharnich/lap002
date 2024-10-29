import 'package:flutter/material.dart';
import 'package:lab1/student.dart';

class DetailPage extends StatelessWidget {
  final Student data;

  const DetailPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF556B2F), // สีเขียวขี้ม้า
        title: Text(
          data.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(data.image),
                backgroundColor: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 24),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              color: Color(0xFF8FBC8F), // สีเขียวขี้ม้าอ่อน
              child: ListTile(
                leading: Icon(Icons.person, color: Color(0xFF2E8B57)),
                title: Text(
                  data.name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Student ID: ${data.studentid}',
                  style: const TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About me:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E8B57),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      data.about,
                      style:
                          const TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              color: Color(0xFF8FBC8F),
              child: ListTile(
                leading: Icon(Icons.email, color: Color(0xFF2E8B57)),
                title: Text(
                  data.email,
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              color: Color(0xFF8FBC8F),
              child: ListTile(
                leading: Icon(Icons.link, color: Color(0xFF2E8B57)),
                title: Text(
                  data.socialMedia,
                  style: const TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
