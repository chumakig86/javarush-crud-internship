Use test;

DROP TABLE IF EXISTS book;
CREATE TABLE `test`.`book` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `author` VARCHAR(100) NOT NULL,
  `isbn` VARCHAR(20) NOT NULL,
  `printYear` INT NOT NULL,
  `readAlready` BIT(1) NOT NULL,
    PRIMARY KEY (`ID`))
  COLLATE='utf8_general_ci';
INSERT INTO 
	book (title, description , author, isbn, printYear, readAlready)
VALUES 
	('Book_1', 'Very good book', 'Vasya Pupkin', '6-234765-23-9', 2013, 1),
	('Book_2', 'Very good book', 'Stephen King', '1-264948-76-4', 2013, 0),
    ('Book_3', 'Very good book', 'Stephen Hawking', '4-234234-45-9', 2013, 1),
    ('Book_4', 'Very good book', 'Lev Tolstoy', '1-123321-67-7', 2013, 0),
    ('Book_5', 'Very good book', 'Dail Carnegie', '9-456789-03-2', 2013, 1),
    
	('Book_6', 'Very good book', 'Vasya Pupkin', '4-456456-443-6', 2013, 0),
	('Book_7', 'Very good book', 'Stephen King', '9-123456-03-2', 2013, 0),
    ('Book_8', 'Very good book', 'Stephen Hawking', '4-456456-897-6', 2013, 0),
    ('Book_9', 'Very good book', 'Lev Tolstoy', '1-908678-83-0', 2013, 0),
    ('Book_10', 'Very good book','Dail Carnegie', '1-623945-83-0', 2013, 0),
    
    ('Book_11', 'Very good book', 'Vasya Pupkin',  '1-943876-83-0', 2014, 0),
	('Book_12', 'Very good book', 'Stephen King',  '7-123123-90-0', 2014, 0),
    ('Book_13', 'Very good book', 'Stephen Hawking', '6-789765-03-2', 2014, 0),
    ('Book_14', 'Very good book', 'Lev Tolstoy', '7-648934-90-0', 2014, 0),
    ('Book_15', 'Very good book', 'Dail Carnegie', '6-904506-03-2', 2014, 0),
    
    ('Book_16', 'Very good book', 'Vasya Pupkin',  '0-123567-43-4', 2015, 0),
	('Book_17', 'Very good book', 'Stephen King',  '4-2831092-22-2', 2015, 0),
    ('Book_18', 'Very good book', 'Stephen Hawking', '0-938487-43-4', 2015, 0),
    ('Book_19', 'Very good book', 'Lev Tolstoy', '4-738322-22-2', 2015, 0),
    ('Book_20', 'Very good book', 'Dail Carnegie', '0-456028-43-4', 2015, 0),
    
    ('Book_21', 'Very good book', 'Vasya Pupkin',  '5-228228-22-8', 2016, 0),
	('Book_22', 'Very good book', 'Stephen King',  '9-000777-00-7', 2016, 0),
    ('Book_23', 'Very good book', 'Stephen Hawking', '5-123123-22-8', 2016, 0),
    ('Book_24', 'Very good book', 'Lev Tolstoy', '9-777000-00-7', 2016, 0),
    ('Book_25', 'Very good book', 'Dail Carnegie', '5-321321-22-8', 2016, 0),
    
    ('Book_26', 'Very good book', 'Vasya Pupkin',  '0-000000-00-1', 2017, 0),
	('Book_27', 'Very good book', 'Stephen King',  '0-000000-00-2', 2017, 0),
    ('Book_28', 'Very good book', 'Stephen Hawking', '0-000000-00-3', 2017, 0),
    ('Book_29', 'Very good book', 'Lev Tolstoy', '0-000000-00-4', 2017, 0),
    ('Book_30', 'Very good book', 'Dail Carnegie', '0-000000-00-5', 2017, 0)




