import 'dart:io';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:image_picker/image_picker.dart';
import 'package:torch_compat/torch_compat.dart';

const flashOn = 'FLASH ON';
const flashOff = 'FLASH OFF';

File _image;
bool _isOn = false;


class QrCodeScanner extends StatefulWidget {
  static String id = 'qr_code_scanner';
  const QrCodeScanner({
    Key key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QrCodeScannerState();
}

class _QrCodeScannerState extends State<QrCodeScanner> {
  var qrText = '';
  var flashState = flashOn;
  QRViewController controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
         QRView(
           key: qrKey,
           onQRViewCreated: _onQRViewCreated,
           overlay: QrScannerOverlayShape(
             borderColor: Colors.blue,
             borderRadius: 10,
             borderLength: 30,
             borderWidth: 10,
             cutOutSize: 300,
           ),
         ),

          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.9,top: MediaQuery.of(context).size.height *0.15,right: 10.0),
            color: Colors.transparent,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:0.0),
                  child:  IconButton(
                      icon: Icon(_isOn ? Icons.flash_off : Icons.flash_on,size: 30.0,color: Colors.white,),
                      onPressed: (){
                        if(_isOn)
                          TorchCompat.turnOn();
                        else
                          TorchCompat.turnOff();
                      }
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:30.0),
                  child: GestureDetector(
                    onTap: (){getImage();},
                    child: Image.asset('assets/gallery.png'),
                  )
                ),
              ],
            )
          )


        ],
      ),
    );
  }



  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        qrText = scanData;
        print(qrText);
        controller.dispose();
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }



  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }
}
