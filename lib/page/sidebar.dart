import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  final bool isCollapsed;

  const Sidebar({super.key, required this.isCollapsed});

  @override
  Widget build(BuildContext context) {
    if (isCollapsed) {
      return const SizedBox(width: 0); // 사이드바 완전 숨김
    }

    return Container(
      color: Colors.blueGrey[50],
      width: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              '2025-2',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ExpansionTile(
                  key: const PageStorageKey('강의'),
                  tilePadding: const EdgeInsets.symmetric(horizontal: 8),
                  title: const Text('강의', overflow: TextOverflow.ellipsis),
                  children: [
                    ExpansionTile(
                      key: const PageStorageKey('강의 목록'),
                      tilePadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: const Text('강의 목록', overflow: TextOverflow.ellipsis),
                      children: const [
                        ListTile(
                          title: Text('옥철영의 발헤임 강의', overflow: TextOverflow.ellipsis),
                        ),
                        ListTile(
                          title: Text('안민수의 128비트 연산', overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      key: const PageStorageKey('즐겨찾는 강의'),
                      tilePadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: const Text('즐겨찾는 강의', overflow: TextOverflow.ellipsis),
                      children: const [
                        ListTile(
                          title: Text('즐겨찾는 항목 없음'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}