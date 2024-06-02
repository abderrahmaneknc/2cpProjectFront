import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mainclass.dart';

class Filed extends StatefulWidget {
  Filed({Key? key, required this.string, required this.dynamic})
      : super(key: key);

  final String string;
  final bool dynamic;
  @override
  _FiledState createState() => _FiledState();
}

class _FiledState extends State<Filed> {
  @override
  Widget build(BuildContext context) {
    bool isClicked = Provider.of<MainClass>(context, listen: false)
        .selectedStrings
        .contains(widget.string);
    Color textColor = (isClicked && widget.dynamic)
        ? Colors.white
        : Color.fromARGB(255, 18, 56, 87);
    Color borderColor = (isClicked && widget.dynamic)
        ? Color.fromARGB(255, 18, 56, 87)
        : Colors.white;

    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19.5),
            side: BorderSide(
              width: 2,
              color: textColor,
            ),
          ),
        ),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 4, horizontal: 8)),
        minimumSize: MaterialStateProperty.all(Size.zero),
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(borderColor),
      ),
      onPressed: () {
        if (widget.dynamic)
          setState(() {
            List<String> selectedStrings =
                Provider.of<MainClass>(context, listen: false).selectedStrings;
            if (!selectedStrings.contains(widget.string)) {
              selectedStrings.add(widget.string);
              isClicked = true;
            } else {
              selectedStrings.remove(widget.string);
              isClicked = false;
            }
          });
      },
      child: Text(
        widget.string,
        style: TextStyle(
          fontSize: 12,
          color: textColor,
          fontFamily: "AeonikTRIAL",
        ),
      ),
    );
  }
}
