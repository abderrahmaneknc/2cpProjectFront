import 'package:prj/items/mainclass.dart';
import 'package:provider/provider.dart';

class StaticMethods {
  static void deleteItem(String itemfirstChar, context, int itemnum) {
    MainClass obj = Provider.of<MainClass>(context, listen: false);
    switch (itemfirstChar) {
      case "E":
        obj.deleteExperienceItem(itemnum);
        break;
      case "ED":
        obj.deleteEducationItem(itemnum);
        break;
      case "S":
        obj.deleteSkillItem(itemnum);
        break;
      case "Certf":
        obj.deleteLisItem(itemnum);
        break;
      case "Lang":
        obj.deleteLanguageItem(itemnum);
        break;
      default:
    }
  }
}
