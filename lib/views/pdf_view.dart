

import 'package:book2/core/category_mdel.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';



class PdfView extends StatelessWidget {
   PdfView({Key? key}) : super(key: key);
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  /*
 void a()async{
    final bytes = await rootBundle.load('assets/pdf/file.pdf');

  Directory appDocDir = await getApplicationDocumentsDirectory();
 String appDocPath = appDocDir.path;
// print(appDocPath);
 
  final file = File('${appDocPath}/fileName.pdf');

  await file.writeAsBytes(bytes.buffer.asUint8List());
  

  }
*/
/*
 b()async{
    final s = await rootBundle.loadString('assets/pdf/file.pdf');

final file = File('assets/pdf/file.pdf');
if (!file.existsSync()) {
  file.createSync();
}
file.writeAsStringSync(s);
  }
*/

/*
c(){
  void downloadFile() async {
  String url = 'assets/pdf/file.pdf';
  String fileName = 'file_name.pdf';

  final taskId = await FlutterDownloader.enqueue(
    url: url,
    savedDir: 'download/',
    fileName: fileName,
    showNotification: true,
    openFileFromNotification: true,
  );
  print("aaaaaaaaaqqqqqqqqqqqqqqqqqqqqqqqqqqaa{$taskId}qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqaaaaaaaaaaaaaa");
}
}
*/
/*
void downloadFile() async {
  // Get the path to the directory where the file will be saved
  String directory = (await AndroidPathProvider.downloadsPath);

print(directory);

  // Get the path to the file in the assets folder
  String assetPath = 'assets/pdf/file.pdf';
  ByteData data = await rootBundle.load(assetPath);
  List<int> bytes = data.buffer.asUint8List();

  // Save the file to the directory
  String filePath = '$directory/file.pdf';
  final file = File('$directory/file.pdf');
if (!file.existsSync()) {
   await file.create(recursive: true);
}
await file.writeAsBytes(bytes);

  //print(file.readAsStringSync());
  print(file.readAsBytesSync());
   print(directory);


  // Start the download using flutter_downloader
  String? downloadId = await FlutterDownloader.enqueue(
    url: 'file://$filePath',
    savedDir: directory,
    fileName: 'myfile.pdf',
    showNotification: true,
    openFileFromNotification: true,
    
  );
  
}
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SfPdfViewer.network('https://firebasestorage.googleapis.com/v0/b/book-app-e1b72.appspot.com/o/images%2Ffirst_Material.pdf?alt=media&token=b2e425ab-69e5-457e-9d53-9e6f225caf43',key: _pdfViewerKey,
      
      ),
      appBar: AppBar(
        
       actions: [
        IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',

            ),
            
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
           IconButton(
            icon: const Icon(
              Icons.download,
              color: Colors.red,
              semanticLabel: 'download',

            ),
            
            onPressed: ()async {
           await downloadimagessss();
            },
          ),
       ],
      ),
      
    );
  }
}