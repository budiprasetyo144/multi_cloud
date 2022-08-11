import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

Future<void> uploadFile() async{
  FilePickerResult? result;
  print('Picker file');
  result = await FilePicker.platform.pickFiles(
    allowMultiple: true,
    withReadStream: true,
    withData: false
  );
  if(result != null){
    print(result.files.first.name);
    //create
    var req = http.MultipartRequest(
      "POST",
      Uri.parse("http://10.107.72.92:8081/file")
    );

    List<PlatformFile>? files = result.files;

    if(files != null){
      print('Add file select with picker');
      for (PlatformFile file in files){
        //add select with req
        req.files.add(http.MultipartFile(
          "file",
          file.readStream!,
          file.size,
          filename: file.name
        ));
      }
    }
    // send request
    var resp = await req.send();

    //read response
    String res = await resp.stream.bytesToString();

    //your response
    print(res);

  }
}