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
              sigmaX: 2.0 /*increase the blur here*/,
              sigmaY: 2.0 /*increase the blur here*/,
            ),
            child: alert);
      },
    );
  }
