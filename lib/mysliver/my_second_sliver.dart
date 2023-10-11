import 'package:flutter/material.dart';

class MySecondSliver extends StatelessWidget {
  const MySecondSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Sliver에는 Container가 못 들어온다.
        SliverToBoxAdapter(
          // Sliver에 일반 Adapter를 넣을때 사용
          child: Container(
            height: 500,
            color: Colors.red,
          ),
        ),
        // 슬리버리스트의 요소는 높이가 가변적이라는 뜻
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 100,
            (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Text(
                    "$index",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
