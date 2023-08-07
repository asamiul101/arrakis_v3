INSERT INTO users (password, bond_holder) VALUES ('R2v3abrd', 'az holdings inc');
INSERT INTO users (password, bond_holder) VALUES ('Vz9qLmsH', 'acme co');
INSERT INTO users (password, bond_holder) VALUES ('xv6qe2oT', 'sovereign investments');
INSERT INTO users (password, bond_holder) VALUES ('wGKsPnBs', 'astra trading ltd');
INSERT INTO users (password, bond_holder) VALUES ('fPB3qtx1', 'muncipal gov of orange county');
INSERT INTO users (password, bond_holder) VALUES ('bK7fBYJc', 'goldman sachs');
INSERT INTO users (password, bond_holder) VALUES ('CRY8CyQl', 'ubs');
INSERT INTO users (password, bond_holder) VALUES ('byJGhwSk', 'barclays');
INSERT INTO users (password, bond_holder) VALUES ('inze35jk', 'british telecom');
INSERT INTO users (password, bond_holder) VALUES ('VcKICV3F', 'pension holdings');
INSERT INTO users (password, bond_holder) VALUES ('EKYEKwna', 'zurich pension fund 4');

INSERT INTO book (book_name) VALUES ('trading_book_1');
INSERT INTO book (book_name) VALUES ('trading_book_2');
INSERT INTO book (book_name) VALUES ('trading_book_3');
INSERT INTO book (book_name) VALUES ('trading_book_4');
INSERT INTO book (book_name) VALUES ('trading_book_6');


INSERT INTO book_user (book_id, user_id) VALUES ('1','1');
INSERT INTO book_user (book_id, user_id) VALUES ('2','2');
INSERT INTO book_user (book_id, user_id) VALUES ('2','3');
INSERT INTO book_user (book_id, user_id) VALUES ('2','4');
INSERT INTO book_user (book_id, user_id) VALUES ('3','3');
INSERT INTO book_user (book_id, user_id) VALUES ('4','5');
INSERT INTO book_user (book_id, user_id) VALUES ('5','6');
INSERT INTO book_user (book_id, user_id) VALUES ('5','7');
INSERT INTO book_user (book_id, user_id) VALUES ('5','8');
INSERT INTO book_user (book_id, user_id) VALUES ('5','9');
INSERT INTO book_user (book_id, user_id) VALUES ('5','10');
INSERT INTO book_user (book_id, user_id) VALUES ('4','11');

DROP TABLE IF EXISTS book_to_user;
CREATE Table book_to_user AS SELECT users.*, book.* FROM book_user
JOIN users ON users.user_id = book_user.user_id
JOIN book ON book.book_id = book_user.book_id;


INSERT INTO counterparty (name) VALUES ('BNPParibasIssu 4 & 37% Microsoft Corp (USD)');
INSERT INTO counterparty (name) VALUES ('Airbus 3.15%  USD');
INSERT INTO counterparty (name) VALUES ('UBS Facebook (USD)');
INSERT INTO counterparty (name) VALUES ('Amazon');
INSERT INTO counterparty (name) VALUES ('HM Treasury United Kingdon');
INSERT INTO counterparty (name) VALUES ('TEMASEK FINL I LTD GLOBAL MEDIUM TERM NTS BOOK ENTRY REG S');
INSERT INTO counterparty (name) VALUES ('First Norway Alpha Kl.IV');

INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('XS1988387210', '0', 'BNPParibasIssu 4 & 37% Microsoft Corp (USD)', '05/08/2021','4.37','buy','1000','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('XS1988387210', '0', 'BNPParibasIssu 4 & 37% Microsoft Corp (USD)', '05/08/2021','4.37','sell','1000','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('USN0280EAR64', '123456780', 'Airbus 3.15%  USD', '30/07/2021','3.15','buy','900','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('USN0280EAR64', '123456780', 'Airbus 3.15%  USD', '30/07/2021','3.15','sell','900','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('A12356111', '123456bh0', 'UBS Facebook (USD)', '30/09/2021','2','buy','900','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('USN0280EAR64', '123456780', 'Airbus 3.15%  USD', '30/07/2021','3.15','buy','900','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('A12356111', '123456bh0', 'UBS Facebook (USD)', '30/09/2021','2','sell','900','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('USU02320AG12', 'AMZN 3.15 08/22/27 REGS', 'Amazon', '03/08/2021','3.15','buy','900','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('USU02320AG12', 'AMZN 3.15 08/22/27 REGS', 'Amazon', '03/08/2021','3.15','buy','900','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('GB00B6460505', 'BDCHBW8', 'HM Treasury United Kingdon', '09/08/2021','0.75','buy','900','GBP','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('GB00B6460506', 'BDCHBW8', 'HM Treasury United Kingdon', '09/08/2021','0.75','sell','900','GBP','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('GB00B6460507', 'BDCHBW8', 'HM Treasury United Kingdon', '09/08/2021','0.75','buy','900','GBP','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('GB00B6460508', 'BDCHBW8', 'HM Treasury United Kingdon', '09/08/2021','0.75','sell','900','GBP','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('GB00B6460509', 'BDCHBW8', 'HM Treasury United Kingdon', '09/08/2021','0.75','buy','900','GBP','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('GB00B6460510', 'BDCHBW8', 'HM Treasury United Kingdon', '09/08/2021','0.75','buy','900','GBP','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('GB00B6460511', 'BDCHBW8', 'HM Treasury United Kingdon', '09/08/2021','0.75','sell','900','GBP','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('GB00B6460512', 'BDCHBW8', 'HM Treasury United Kingdon', '09/08/2021','0.75','buy','900','GBP','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('GB00B6460513', 'BDCHBW8', 'HM Treasury United Kingdon', '09/08/2021','0.75','buy','900','GBP','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('GB00B6460514', 'BDCHBW8', 'HM Treasury United Kingdon', '09/08/2021','0.75','buy','900','GBP','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('GB00B6460515', 'BDCHBW8', 'HM Treasury United Kingdon', '09/08/2021','0.75','sell','900','GBP','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('US87973RAA86', '87973RAA8', 'TEMASEK FINL I LTD GLOBAL MEDIUM TERM NTS BOOK ENTRY REG S', '06/08/2021','2.02','buy','690','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('US87973RAA86', '87973RAA8', 'TEMASEK FINL I LTD GLOBAL MEDIUM TERM NTS BOOK ENTRY REG S', '06/08/2021','2.02','buy','690','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('US87973RAA86', '87973RAA8', 'TEMASEK FINL I LTD GLOBAL MEDIUM TERM NTS BOOK ENTRY REG S', '06/08/2021','2.02','buy','690','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('US87973RAA86', '87973RAA8', 'TEMASEK FINL I LTD GLOBAL MEDIUM TERM NTS BOOK ENTRY REG S', '06/08/2021','2.02','buy','690','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('IE00B29LNP31', '87973RAA8', 'First Norway Alpha Kl.IV', '22/12/2030','1.123','buy','340','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('IE00B29LNP31', '87973RAA8', 'First Norway Alpha Kl.IV', '22/12/2030','1.123','buy','340','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('IE00B29LNP31', '87973RAA8', 'First Norway Alpha Kl.IV', '22/12/2030','1.123','buy','340','USD','open');
INSERT INTO security (isin,cusip,issuer_name,maturity_date,coupon,type,face_value,currency,status) VALUES ('IE00B29LNP31', '87973RAA8', 'First Norway Alpha Kl.IV', '22/12/2030','1.123','sell','340','USD','open');





INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('1','1','1','1','USD', 'open', '50', 'buy', '13/05/2021', '04/08/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('1','1','2','1','USD', 'open', '40', 'sell', '04/02/2021', '04/08/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('2','2','3','2','USD', 'open', '1000', 'buy', '13/05/2021', '23/08/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('2','2','4','2','USD', 'open', '900', 'sell', '04/02/2021', '10/09/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('3','3','5','3','USD', 'open', '50', 'buy', '13/05/2021', '23/08/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('4','2','6','2','USD', 'open', '1000', 'buy', '13/05/2021', '23/08/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('3','2','7','3','USD', 'open', '50', 'sell', '13/05/2021', '23/08/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('5','4','8','4','USD', 'open', '60', 'buy', '04/02/2021', '27/09/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('5','4','9','4','USD', 'open', '50', 'buy', '23/08/2021', '23/08/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('6','5','10','5','GBP', 'open', '1100', 'buy', '27/09/2021', '27/09/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('6','5','11','5','GBP', 'open', '900', 'sell', '28/09/2021', '28/09/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('7','5','12','5','GBP', 'open', '2000', 'buy', '29/09/2021', '29/09/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('7','5','13','5','GBP', 'open', '2000', 'sell', '30/09/2021', '30/09/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('8','5','14','5','GBP', 'open', '1000', 'buy', '01/10/2021', '01/10/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('8','5','15','5','GBP', 'open', '900', 'buy', '02/10/2019', '02/10/2019');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('8','5','16','5','GBP', 'open', '1900', 'sell', '03/10/2019', '03/10/2019');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('9','5','17','5','GBP', 'open', '600', 'buy', '04/10/2018', '04/10/2018');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('10','5','18','5','GBP', 'open', '600', 'buy', '05/10/2019', '05/10/2019');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('10','5','19','5','GBP', 'open', '700', 'buy', '06/06/2021', '06/06/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('10','5','20','5','GBP', 'open', '1300', 'sell', '07/10/2011', '07/10/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('11','4','21','6','USD', 'open', '60', 'buy', '04/02/2012', '27/09/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('11','4','22','6','USD', 'open', '50', 'buy', '23/08/2012', '23/08/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('11','4','23','6','USD', 'open', '75', 'buy', '04/02/2013', '27/09/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('11','4','24','6','USD', 'open', '50', 'buy', '23/08/2014', '23/08/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('11','4','25','7','USD', 'open', '300', 'buy', '04/02/2016', '27/09/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('11','4','26','7','USD', 'open', '300', 'buy', '23/08/2012', '23/08/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('11','4','27','7','USD', 'open', '300', 'buy', '04/02/2013', '27/09/2021');
INSERT INTO trades (user_id, book_id, security_id, counterparty_id, currency, status, quantity, type, trade_date,settlement_date) VALUES ('11','4','28','7','USD', 'open', '300', 'sell', '23/08/2015', '23/08/2021');


