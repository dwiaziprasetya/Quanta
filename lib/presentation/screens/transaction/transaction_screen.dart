import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quanta/core/style/color/quanta_colors.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            'Transaction',
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          ),
          backgroundColor: QuantaColors.blue.color,
        ),
        body: Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16),
            children: [
              _buildTransactionItem(
                icon: Icons.arrow_downward,
                iconColor: Colors.red,
                title: 'Dropbox Plan',
                subtitle: 'Subscription',
                date: '18 Sept 2019',
                amount: '- \$144.00',
                amountColor: Colors.red,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_downward,
                iconColor: Colors.red,
                title: 'Spotify Subscr.',
                subtitle: 'Subscription',
                date: '12 Sept 2019',
                amount: '- \$24.00',
                amountColor: Colors.red,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_upward,
                iconColor: Colors.green,
                title: 'Youtube Ads.',
                subtitle: 'Income',
                date: '10 Sept 2019',
                amount: '+ \$32.00',
                amountColor: Colors.green,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_upward,
                iconColor: Colors.green,
                title: 'Freelance Work',
                subtitle: 'Income',
                date: '06 Sept 2019',
                amount: '+ \$421.00',
                amountColor: Colors.green,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_downward,
                iconColor: Colors.red,
                title: 'Dropbox Plan',
                subtitle: 'Subscription',
                date: '18 Sept 2019',
                amount: '- \$144.00',
                amountColor: Colors.red,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_downward,
                iconColor: Colors.red,
                title: 'Spotify Subscr.',
                subtitle: 'Subscription',
                date: '12 Sept 2019',
                amount: '- \$24.00',
                amountColor: Colors.red,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_upward,
                iconColor: Colors.green,
                title: 'Youtube Ads.',
                subtitle: 'Income',
                date: '10 Sept 2019',
                amount: '+ \$32.00',
                amountColor: Colors.green,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_upward,
                iconColor: Colors.green,
                title: 'Freelance Work',
                subtitle: 'Income',
                date: '06 Sept 2019',
                amount: '+ \$421.00',
                amountColor: Colors.green,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_downward,
                iconColor: Colors.red,
                title: 'Dropbox Plan',
                subtitle: 'Subscription',
                date: '18 Sept 2019',
                amount: '- \$144.00',
                amountColor: Colors.red,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_downward,
                iconColor: Colors.red,
                title: 'Spotify Subscr.',
                subtitle: 'Subscription',
                date: '12 Sept 2019',
                amount: '- \$24.00',
                amountColor: Colors.red,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_upward,
                iconColor: Colors.green,
                title: 'Youtube Ads.',
                subtitle: 'Income',
                date: '10 Sept 2019',
                amount: '+ \$32.00',
                amountColor: Colors.green,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_upward,
                iconColor: Colors.green,
                title: 'Freelance Work',
                subtitle: 'Income',
                date: '06 Sept 2019',
                amount: '+ \$421.00',
                amountColor: Colors.green,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_downward,
                iconColor: Colors.red,
                title: 'Dropbox Plan',
                subtitle: 'Subscription',
                date: '18 Sept 2019',
                amount: '- \$144.00',
                amountColor: Colors.red,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_downward,
                iconColor: Colors.red,
                title: 'Spotify Subscr.',
                subtitle: 'Subscription',
                date: '12 Sept 2019',
                amount: '- \$24.00',
                amountColor: Colors.red,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_upward,
                iconColor: Colors.green,
                title: 'Youtube Ads.',
                subtitle: 'Income',
                date: '10 Sept 2019',
                amount: '+ \$32.00',
                amountColor: Colors.green,
              ),
              _buildTransactionItem(
                icon: Icons.arrow_upward,
                iconColor: Colors.green,
                title: 'Freelance Work',
                subtitle: 'Income',
                date: '06 Sept 2019',
                amount: '+ \$421.00',
                amountColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTransactionItem({
  required IconData icon,
  required Color iconColor,
  required String title,
  required String subtitle,
  required String date,
  required String amount,
  required Color amountColor,
}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 8),
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.05),
          blurRadius: 5,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: iconColor),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              amount,
              style: TextStyle(fontWeight: FontWeight.bold, color: amountColor),
            ),
            Text(date, style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ],
    ),
  );
}
