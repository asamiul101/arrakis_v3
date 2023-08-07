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


INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('13/05/2021', '04/08/2021', '90', '50');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('04/02/2021', '04/08/2021', '89.56', '40');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('13/05/2021', '23/08/2021', '105.775', '1000');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('04/02/2021', '10/09/2021', '105.775', '900');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('13/05/2021', '23/08/2021', '90', '50');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('13/05/2021', '23/08/2021', '105.775', '1000');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('13/05/2021', '23/08/2021', '90', '50');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('04/02/2021', '27/09/2021', '98.56', '60');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('23/08/2021', '23/08/2021', '98.56', '50');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('27/09/2021', '27/09/2021', '110.35', '1100');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('28/09/2021', '28/09/2021', '110.35', '900');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('29/09/2021', '29/09/2021', '110.35', '2000');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('30/09/2021', '30/09/2021', '110.35', '2000');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('01/10/2021', '01/10/2021', '110.35', '1000');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('02/10/2019', '02/10/2019', '110.35', '900');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('03/10/2019', '03/10/2019', '110.35', '1900');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('04/10/2018', '04/10/2018', '110.35', '600');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('05/10/2019', '05/10/2019', '110.35', '600');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('06/06/2021', '06/06/2021', '110.35', '700');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('07/10/2011', '07/10/2021', '110.35', '1300');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('04/02/2012', '27/09/2021', '100.13', '60');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('23/08/2012', '23/08/2021', '100.13', '50');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('04/02/2013', '27/09/2021', '100.13', '75');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('23/08/2014', '23/08/2021', '100.13', '50');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('04/02/2016', '27/09/2021', '98.76', '300');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('23/08/2012', '23/08/2021', '98.76', '300');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('04/02/2013', '27/09/2021', '98.76', '300');
INSERT INTO trades (trade_date,settlement_date,unit_price,quantity) VALUES ('23/08/2015', '23/08/2021', '98.76', '300');
