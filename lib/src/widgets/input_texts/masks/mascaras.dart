import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class Mascaras {
  static final mascaraCelular = MaskTextInputFormatter(mask: '(##) #####-####');
  static final mascaraCep = MaskTextInputFormatter(mask: '#####-###');
  static final mascaraCPF = MaskTextInputFormatter(mask: '###.###.###-##');
  static final mascaraCNPJ = MaskTextInputFormatter(mask: '##.###.###/####-##');
  static final mascaraDataNascimento =
      MaskTextInputFormatter(mask: '##/##/####');
}
