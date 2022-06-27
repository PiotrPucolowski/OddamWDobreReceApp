INSERT INTO category(id, name) VALUES
(1,'Ubrania do użytku'),
(2,'Ubrania do wyrzucenia'),
(3,'Zabawki'),
(4,'Książki'),
(5,'Inne');

INSERT INTO `institution`(id,name, description) VALUES
(1,'Fundacja "Dbam o Zdrowie"', 'Cel i misja: Pomoc dzieciom z ubogich rodzin.'),
(2,'Fundacja "A kogo"', 'Cel i misja: Pomoc wybudzaniu dzieci ze śpiączki.'),
(3,'Fundacja “Dla dzieci"', 'Cel i misja: Pomoc osobom znajdującym się w trudnej sytuacji życiowej.'),
(4,'Fundacja “Bez domu”', 'Cel i misja: Pomoc dla osób nie posiadających miejsca zamieszkania');

INSERT INTO `donation`(id, city, pick_up_comment, pick_up_date, pick_up_time, quantity, street, zip_code, institution_id) VALUES
(1,'Warszawa','oddaje swoje zabawki',current_date,current_time,2,'Okrzei 12',00-000,3),
(2,'Sopot','ubranka',current_date,current_time,3,'Matejki 2',11-111,2),
(3,'Wrocław','książeczki',current_date,current_time,5,'Skłodowskiej 23/2',22-569,1);
