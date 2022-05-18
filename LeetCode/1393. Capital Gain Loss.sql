SELECT stock_name, SUM(CASE operation WHEN 'Buy' THEN -1 * price WHEN 'Sell' THEN price END) AS capital_gain_loss FROM Stocks GROUP BY stock_name;
