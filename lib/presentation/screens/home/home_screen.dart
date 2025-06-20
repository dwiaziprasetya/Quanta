import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quanta/core/style/color/quanta_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 60, 20, 30),
              color: QuantaColors.blue.color,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome Back,',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            'Dwi Azi Prasetya',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                            size: 24,
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 16),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://i.pinimg.com/736x/a3/07/fe/a307fed459c27dd32221db0430593e2c.jpg', // Ganti dengan gambar kamu
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    '\$8,420.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Active Total Balance',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.calendar_month, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Today, 20 June 2025',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Recent Transactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Transactions',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: QuantaColors.blue.color,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
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
                ],
              ),
            ),
          ],
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
        // Ikon kiri
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: iconColor),
        ),
        SizedBox(width: 12),

        // Teks
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

        // Amount dan tanggal
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
