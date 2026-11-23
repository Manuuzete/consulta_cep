import 'package:flutter_test/flutter_test.dart';

import 'package:sub_manu/main.dart';

void main() {
  testWidgets('Exibe a tela de consulta de CEP', (WidgetTester tester) async {
    await tester.pumpWidget(const ConsultaCepApp());

    expect(find.text('Consulta de CEP'), findsOneWidget);
    expect(find.text('Encontre um endereço'), findsOneWidget);
    expect(find.text('Consultar'), findsOneWidget);
  });
}
