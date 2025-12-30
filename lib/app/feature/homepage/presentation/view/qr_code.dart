import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCode extends StatefulWidget {
  const QrCode({super.key});

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  late TextEditingController controller;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();

    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Your QR Code", style: TextStyle(
            
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black87
          )),
        ),
        backgroundColor: Colors.blueGrey.shade300,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, right: 20, left: 20),
              child: Column(
                children: [
                  // TextField(
                  //   decoration: InputDecoration(
                  //     hintText: "Enter Your Name",
                  //     border: OutlineInputBorder(
                        
                  //     )
                  //   ),
                   
                  // ),
                  SizedBox(height: 20,),
                   TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: "Enter URL",
                      border: OutlineInputBorder(
                        
                      )
                    ),
                   
                  ),
                  SizedBox(height: 50,),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      controller.text;
                    });
                  }, child: Text("Generate")),
        
                  SizedBox(height: 150,),
        
                  Container(
                    height: 300,
                    width: 500,
                    color: Colors.amber,
        
                    child: Center(
                      child: QrImageView(
                        data: controller.text,
                         size: 280,
                         embeddedImageStyle: QrEmbeddedImageStyle(
                          size: Size(100, 100), 
                         ),
                         ),
                      
                    ),
                  )
                ],
              ),
            )
          ],
        
        ),
      ),


    );
  }
}