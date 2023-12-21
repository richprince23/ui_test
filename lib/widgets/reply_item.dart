import 'package:flutter/material.dart';


class ReplyItem extends StatelessWidget {
  final String user;
  final String msg;
  const ReplyItem({
    super.key,
    required this.user,
    required this.msg,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
      ),
      padding: const EdgeInsets.all(10).copyWith(left: 28),
      margin: const EdgeInsets.only(left: 20),
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/aikins.jpg',
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  msg,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
