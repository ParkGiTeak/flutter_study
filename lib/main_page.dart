import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int count = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('카운터')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '숫자',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
            ),
            Text(
              '$count',
              style: TextStyle(
                color: Colors.red,
                fontSize: 70,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton');
              },
              child: Text('ElevatedButton'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('TextButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('OutlinedButton'),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: '글자', // 클릭전 힌트 형식에서 누르면 상단으로 이동
                border: OutlineInputBorder(), // 외곽선
              ),
              onChanged: (text) {
                print(text);
              },
            ),
            Image.network(
              'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT15RrII6lkLU_aF06n_JjKUxYKIW_iPqwlj1cDw19tWV1asbxquziiHB6b34qqvDMKYLRD_g',
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
            Image.asset(
              'assets/image.png',
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 화면 갱신
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
