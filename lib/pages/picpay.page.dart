import 'package:flutter/material.dart';
import 'package:picpay/widgets/activity_item.dart';
import 'package:picpay/widgets/bottom_widget.menu.dart';
import 'package:picpay/widgets/button_tab.widget.dart';
import 'package:picpay/widgets/histoy.widget.dart';

class PicPayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowGlow();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildAppBar(context),
                SizedBox(
                  height: 10,
                ),
                buildHistory(),
                SizedBox(
                  height: 10,
                ),
                buildPromotion(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        'Atividades',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      ButtonTab(
                        isSelected: false,
                        text: 'Todos',
                        color: Colors.green,
                      ),
                      ButtonTab(
                        isSelected: true,
                        text: 'Minhas',
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (_, index) {
                    return ActivityItem();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 100,
        color: Colors.transparent,
        padding: const EdgeInsets.only(
          bottom: 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.attach_money,
                color: Colors.white,
              ),
            ),
            Text(
              'Pagar',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomBar(),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.qr_code_outlined,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.settings_outlined,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    'Meu saldo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('R\$ 150.432,00',
                      style: Theme.of(context).textTheme.headline6)
                ],
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.card_giftcard_outlined,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.maps_ugc_outlined,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              print('onTap');
            },
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black38,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'O que voce quer pagar?',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHistory() {
    return Column(
      children: [
        Row(
          children: [
            ButtonTab(
              isSelected: true,
              text: 'Segestões',
            ),
            ButtonTab(
              isSelected: false,
              text: 'Favoritos',
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 110,
          margin: const EdgeInsets.only(left: 5),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (notification) {
              notification.disallowGlow();
              return true;
            },
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_, index) {
                return History();
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPromotion() {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Icon(
                Icons.qr_code,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Seleção especial'),
                  Text(
                    'Promoções disponíveis',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomBar(){
  return Container(
    height: 50,
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                child: BottomMenu(
                  isSelected: true,
                  icon: Icons.home_filled,
                  text: 'Início',
                ),
              ),
              Expanded(
                child: BottomMenu(
                  isSelected: false,
                  icon: Icons.account_balance_wallet_outlined,
                  text: 'Carteira',
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                child: BottomMenu(
                  isSelected: false,
                  icon: Icons.notifications_none,
                  text: 'Notificações',
                ),
              ),
              Expanded(
                child: BottomMenu(
                  isSelected: false,
                  icon: Icons.shopping_bag_outlined,
                  text: 'Store',
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

}
