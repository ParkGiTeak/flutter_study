import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int count = 10;
  String _text = '';
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose(); // 다쓰고 해제해줘야지 메모리 누수 방지
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('카운터')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 30,
              ),
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
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: '글자', // 클릭전 힌트 형식에서 누르면 상단으로 이동
                        border: OutlineInputBorder(), // 외곽선
                      ),
                      onChanged: (text) {
                        _text = text;
                        // print(text);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        print(_textController.text);

                        // 화면 갱신
                        setState(() {});
                      },
                      child: Text('login'),
                    ),
                  ),
                ],
              ),
              Text(_textController.text),
              Image.network(
                'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT15RrII6lkLU_aF06n_JjKUxYKIW_iPqwlj1cDw19tWV1asbxquziiHB6b34qqvDMKYLRD_g',
                width: 100,
                height: 100,
                fit: BoxFit.fill,
              ),
              Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/image.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
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
