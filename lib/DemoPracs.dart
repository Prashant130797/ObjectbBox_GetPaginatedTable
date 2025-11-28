import 'dart:isolate';

class Demopracs {
  static isolateSpawn()async{
    ReceivePort rcport = ReceivePort();
    await Isolate.spawn(sendData, {
      "num":20,
      "port":rcport.sendPort,
    });
    rcport.listen((message) {
        print("THE data is ${message}");
        rcport.close();
    },);
  }

 static sendData(Map json){
    int num = json["num"];
    SendPort port = json["port"];
    port.send(num * num );
  }
}

void main(){
  Demopracs.isolateSpawn();
}