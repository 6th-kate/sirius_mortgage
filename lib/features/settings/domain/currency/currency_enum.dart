enum CurrencyType {
  rub('RUB', 'Р'),
  usd('USD', '\$'),
  eur('EUR', '€');

  final String currencyName;
  final String shortSymbol;

  const CurrencyType(this.currencyName, this.shortSymbol);
}
