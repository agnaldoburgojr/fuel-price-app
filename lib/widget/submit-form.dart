import 'package:aog/widget/input.widget.dart';
import 'package:aog/widget/loading.button.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.gasCtrl,
    @required this.alcCtrl,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Input(
            label: 'Gasolina',
            ctrl: gasCtrl,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Input(
            label: 'Álcool',
            ctrl: alcCtrl,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        LoadingButton(
          busy: busy,
          invert: false,
          func: submitFunc,
          text: 'CALCULAR',
        ),
      ],
    );
  }
}
