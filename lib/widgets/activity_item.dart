import 'package:flutter/material.dart';

class ActivityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: FlutterLogo(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Voce',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                          text: 'enviou um',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: 'Pix',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Algume descrição top',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    'R\$ 500,00',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.lock,
                    size: 15,
                    color: Colors.black38,
                  ),
                  Text(
                    '7 dias atrás',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black38,
                  ),
                  Text('16'),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black38,
                  ),
                  Text('9'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
