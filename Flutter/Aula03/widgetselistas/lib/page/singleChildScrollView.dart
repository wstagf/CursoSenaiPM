import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  const SingleChildScrollViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 180,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.amber,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.abc_outlined,
                      size: 150,
                    ),
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 150,
                    ),
                    Icon(
                      Icons.arrow_back_outlined,
                      size: 150,
                    ),
                    Icon(
                      Icons.abc_outlined,
                      size: 150,
                    ),
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 150,
                    ),
                    Icon(
                      Icons.arrow_back_outlined,
                      size: 150,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 180,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.abc_outlined,
                      size: 150,
                    ),
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 150,
                    ),
                    Icon(
                      Icons.arrow_back_outlined,
                      size: 150,
                    ),
                    Icon(
                      Icons.abc_outlined,
                      size: 150,
                    ),
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 150,
                    ),
                    Icon(
                      Icons.arrow_back_outlined,
                      size: 150,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
