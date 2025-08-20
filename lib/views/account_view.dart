import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  Widget orders(
    BuildContext context, {
    required int num,
    required String title,
  }) {
    return Column(
      children: [
        Text(
          '$num',
          style: TextStyle(
            fontSize: 24,
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(title, style: TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget listTile(
    BuildContext context, {
    required String title,
    required IconData icon,
    String? subtitle,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).primaryColor,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle ?? ''),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Theme.of(context).primaryColor,
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          SizedBox(
            width: 240,
            height: 240,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/luffy.jpg",
                  ),
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Mina Nady',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
            children: [
              orders(
                context,
                num: 50,
                title: 'Orders',
              ),
              orders(
                context,
                num: 10,
                title: 'Vouchers',
              ),
            ],
          ),
          const Divider(),
          listTile(
            context,
            title: "Past Orders",
            subtitle:
                'You will find here your old orders',
            icon: Icons.production_quantity_limits,
          ),
          const Divider(),
          listTile(
            context,
            title: "Available Vouchers",
            icon: Icons.receipt,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
