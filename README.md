# Consulta de CEP

Aplicativo Flutter para consultar endereços brasileiros pela API pública ViaCEP.

## Recursos

- Entrada e validação de CEP com 8 dígitos.
- Consulta real a `https://viacep.com.br/ws/{cep}/json/`.
- Exibição separada de logradouro, bairro, localidade e UF.
- Tratamento de CEP inválido, CEP inexistente, carregamento e erros de conexão.
- Interface responsiva em Material 3.

## Executar

```powershell
flutter pub get
flutter run -d windows
```

Também é possível executar no Chrome:

```powershell
flutter run -d chrome
```

## Estrutura

- `lib/main.dart`: inicialização do aplicativo.
- `lib/models/address.dart`: modelo do endereço.
- `lib/services/viacep_service.dart`: consulta HTTP ao ViaCEP.
- `lib/screens/address_search_screen.dart`: interface e estados da pesquisa.
