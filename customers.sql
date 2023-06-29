create schema netology;

create table netology.CUSTOMERS
(
    id           serial primary key,
    name         varchar(100) not null,
    surname      varchar(100) not null,
    age          int          not null check ( age > 0 ),
    phone_number varchar(12)  not null
);

insert into netology.customers(name, surname, age, phone_number)
values ('Alex', 'Templ', 25, +79854567890),
       ('Alexey', 'Ivanov', 30, +78524589785),
       ('Toma', 'Timina', 41, +79632317845),
       ('Alexey', 'Zimin', 52, +77892584512);