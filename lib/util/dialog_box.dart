import 'package:flutter/material.dart';

import 'buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: Container(
        height: 128,
        child: Column(
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  gapPadding: 8.0,
                ),
                hintText: "Ajouter une nouvelle tâche",
              ),
            ),

            // buttons -> save + cancel
            Expanded(
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // save
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.green,
                        ),
                        child: Button(text: "Ajouter", onPressed: onSave)),
                    const SizedBox(width: 8),
                    //cancel
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.pink,
                        ),
                        child: Button(text: "Annuler", onPressed: onCancel)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
