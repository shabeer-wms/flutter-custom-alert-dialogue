# flutter custom alert dialogue

* this is a custom alert dialogue example which gives you a transparent background for alert dialogue
* this funtion can called by ```showAlertDialog(context);```
* there is no external libraries used

```
//Create Function

showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = MaterialButton(
      onPressed: () {
        //TODO: add your functions here
        Navigator.pop(context);
      },
      child: Text("OK"),
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Background Blur"), // change your alter title
      content: const Text(
          "This alerts background is blur"), //change your alert message
      actions: [
        okButton, //buttons are declared here
      ],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)), //change the border here
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2.0 /*increase / decrease the blur here*/,
              sigmaY: 2.0 /*increase / decrease the blur here*/,
            ),
            child: alert);
      },
    );
   };
   ```
   
   <img width="445" alt="image" src="https://user-images.githubusercontent.com/77631705/205418646-c73364a7-a76c-4e36-ae70-017707e85771.png">
   
   * dart ui is used as the library for ``` BackdropFilter ``` : ``` import 'dart:ui'; ```
   
