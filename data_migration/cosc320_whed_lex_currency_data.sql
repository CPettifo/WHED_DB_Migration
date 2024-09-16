INSERT INTO cosc320_whed_lex_currency (currency_id, currency_code, currency_name)
SELECT CurrencyID, CurrencyCode, Currency
FROM whed_lex_currency;