import 'dart:io';

import 'package:flutter/material.dart';

class CustomMp3ListTille extends StatelessWidget {
  final String title;
  final String image;
  final Function ontap;
  final String number;
  final String url;
  const CustomMp3ListTille(
      {this.title, this.image, this.ontap, this.number, this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: ontap,
            // onLongPress: () async {
            //   final appPath = await getApplicationDocumentsDirectory();
            //   final path = Directory(appPath.path + '/Quraani');
            //   await Permission.storage.request();
            //   // var path = Directory('storage/emulated/0/quraan');
            //   if (await path.exists() == false) {
            //     path.create();
            //   }
            //   await FlutterDownloader.enqueue(
            //     url: url,
            //     savedDir: path.path,
            //     // savedDir: 'Locations/On  My iPhone//',
            //     showNotification: true,
            //     openFileFromNotification: false,
            //   ).then((value) {
            //     ScaffoldMessenger.of(context).hideCurrentSnackBar();
            //     ScaffoldMessenger.of(context)
            //         .showSnackBar(SnackBar(content: Text('جاري التحميل')));
            //   }).onError((error, stackTrace) {
            //     ScaffoldMessenger.of(context).hideCurrentSnackBar();
            //     ScaffoldMessenger.of(context)
            //         .showSnackBar(SnackBar(content: Text(error.toString())));
            //     return;
            //   });
            // },
            child: Container(
              padding: EdgeInsets.only(right: 10),
              child: ListTile(
                // leading:
                //  Stack(
                //   alignment: Alignment.center,
                //   children: [
                //     // Image.asset(image),

                //   ],
                // ),
                // subtitle: Text(
                //   'ضغطه مطولة لتحميل الصوت',
                //   style: TextStyle(color: Colors.white, fontSize: 8),
                // ),
                title: Text(
                  title,
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                trailing: FittedBox(
                  child: Row(
                    children: [
                      Text(
                        "استمع",
                        style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                          // fontSize: 20
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
