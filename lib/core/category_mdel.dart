import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:book2/core/pathes.dart';
import 'package:path_provider/path_provider.dart';

class CategoryModel {
  String name;
  List<String> pdfpathes = [];

  CategoryModel({required this.name, required this.pdfpathes});
}

List<CategoryModel> a = [
  CategoryModel(name: 'سنة اولى', pdfpathes: [
    PathesPdf.pdf1,
    PathesPdf.pdf1,
    PathesPdf.pdf1,
  ]),
];

/*
void downloadFile() async {
  // ميثود شغالة
 /* final ref = FirebaseStorage.instance.ref().child('my_file.jpg');
  final bytes = await ref.getData();
  final file = File('/path/to/save/my_file.jpg');
  await file.writeAsBytes(bytes!);
 final downloadTask = ref.writeToFile(file);*/


}
*/
/*
// ميثود لتحميل كتاب  او اى ملف من فايربيز
downloadFile(String firebasetPath) async {
  final directory =
      await getExternalStorageDirectory(); // getDownloadsDirectory();
  final filePath = directory!.path;
  final fileName = firebasetPath.split("/").last;
  final File file = File("$filePath/$fileName");
  final storageRef = FirebaseStorage.instance.ref();
  final ref = storageRef.child(firebasetPath);

  await ref.writeToFile(file);
}
*/




// explain function
/*
downloadimages() async {
/*

يقوم هذا الكود بتنزيل ملفات الصور من خادم Firebase Storage إلى مجلد محلي على جهاز المستخدم. يتكون الكود من مجموعة من الخطوات:

تعريف قائمة بأسماء الملفات التي تحتاج إلى التنزيل.
إنشاء مثيل من FirebaseStorage وإنشاء مسار التخزين للمجلد الذي يحتوي على الملفات المراد تنزيلها.
الحصول على مسار مجلد التطبيق الذي سيتم تخزين الملفات فيه.
تنفيذ حلقة تكرارية على القائمة التي تحتوي على أسماء الملفات المحددة.
لكل اسم ملف في القائمة، يتم إنشاء مسار التخزين للملف الذي سيتم تنزيله والحصول على المسار المحلي لحفظ الملف المنزل.
بعد ذلك يتم تنفيذ تنزيل الملف باستخدام writeToFile والذي يقوم بتحميل الملف وحفظه في المسار المحدد.
يتم تكرار هذه العملية لكل ملف موجود في القائمة، مما يؤدي إلى تنزيل كل الملفات التي تم تحديدها في مجلد محلي على جهاز المستخدم.


*/
// اسماء الملفات في مجلد images
  List<String> imageList = ["car.jpg", "cat.jpg", "can.jpg"];

  FirebaseStorage storage = FirebaseStorage.instance;

// (storage.ref) هو الطريقة التي يتم بها الوصول إلى مخزن Firebase Storage
// .child('images') تنشئ إشارة إلى مجلد يسمى "images" داخل مخزن Firebase Storage.
  var storageRef = storage.ref().child('images');

/*

هذا الكود يقوم بالحصول على مسار مجلد التطبيق الخاص بالمستخدم على جهازه الذي يمكن استخدامه لتخزين البيانات المرتبطة بالتطبيق. يستخدم هذا المسار عادةً لتخزين ملفات التطبيق مثل الصور أو الملفات المؤقتة أو ملفات التكوين أو أي بيانات أخرى.

تستخدم الدالة getApplicationDocumentsDirectory() من حزمة path_provider في Flutter للحصول على مسار هذا المجلد الخاص بالتطبيق على جهاز المستخدم. وتُستخدم await لأن هذه الدالة تعيد مستقبلاً Future<Directory>، حيث يتم استدعاء الدالة getApplicationDocumentsDirectory() بشكلٍ غير متزامن لاسترداد القيمة.
*/
// بتجيب فولدر التطبيق من جهاز اليوز عشان يتم تخزين الملفات فيه اللى جاية من الفايربيز
  final appDocDir = await getApplicationDocumentsDirectory();

// عمل لوب على الفولدر الموجود فيه الملفات
  for (String imageName in imageList) {
    // عنوان او اسم الصورة او الملف اللى فى الستوريج يجلب
    final islandRef = storageRef.child("images/$imageName");
    // بحدد للصورة مسار تتخزن فيه جوا فولدر التطبيق
    final filePath = "${appDocDir.absolute}/images/$imageName";
    //  بينشئ المسار وهيسميه ايميجز عشان يحطه جوا مجلد التطبيق فى جهاز ايوزر لو الفولدر ده موجود هيتخزن فيه لو مش موجود هيعمل الفولدر دا ويتخزن فيه
    final file = File(filePath);
    // لتحميل الملف
    final downloadTask = islandRef.writeToFile(file);
  }
}

*/





// Download images from firebase

downloadimagessss() async {
  List<String> imageList = ["car.jpg", "cat.jpg", "can.jpg"];

  FirebaseStorage storage = FirebaseStorage.instance;

  var storageRef = storage.ref().child('images');

  final appDocDir = await getApplicationDocumentsDirectory();

  for (String imageName in imageList) {
    final islandRef = storageRef.child("images/$imageName");

    final filePath = "${appDocDir.absolute}/images/$imageName";

    final file = File(filePath);
    if(file.existsSync()){
      await file.create(recursive:true);
    }

    final downloadTask = islandRef.writeToFile(file);




    downloadTask.snapshotEvents.listen((taskSnapshot) {
  switch (taskSnapshot.state) {
    case TaskState.running:
      print('ruuuuuuuuuuuuuuuuuuuuuun');
      break;
    case TaskState.paused:
      // TODO: Handle this case.
      break;
    case TaskState.success:
      print('successsuccesssuccesssuccesssuccess');
      break;
    case TaskState.canceled:
      // TODO: Handle this case.
      break;
    case TaskState.error:
      print('errorerrorerrorerrorerrorerrorerror');
      break;
  }
   } );
}}



