import 'package:flutter/material.dart';

// تعريف الصفحة الرئيسية للتطبيق
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مثال عن واجهة المستخدم الرسومية'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // إضافة الأزرار الرسومية للخيارات الثلاثة
            ElevatedButton(
              child: Text(
                'إيداع',
                style: TextStyle(fontSize: 24),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              onPressed: () {},
            ),
            SizedBox(height: 24),
            ElevatedButton(
              child: Text(
                'سحب',
                style: TextStyle(fontSize: 24),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              onPressed: () {},
            ),
            SizedBox(height: 24),
            ElevatedButton(
              child: Text(
                'استعلام',
                style: TextStyle(fontSize: 24),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
