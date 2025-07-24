import 'package:flutter/material.dart';

class sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      color: Colors.blueGrey[50],
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('2025-2',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ExpansionTile(
            title: const Text('강의'),
            children: [
              ExpansionTile(
              title: const Text('강의 목록'),
              children: [
                ListTile(title: Text('옥철영의 발헤임 강의')),
                ListTile(title: Text('안민수의 128비트 연산'))
              ],
             ),
              ExpansionTile(
                title: const Text('즐겨찾는 강의'),
                children: [
                  ListTile(title: Text('')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}