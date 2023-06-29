create table netology.ORDERS
(
    id           serial primary key,
    date         date default current_date,
    customer_id  int  not null,
    product_name varchar(255),
    amount       real not null check ( amount > 0 ),
    foreign key (customer_id) references netology.customers (id)
);

insert into netology.orders(customer_id, product_name, amount)
values (1, 'Milk', 85.50),
       (2, 'Coffee', 520.62),
       (3, 'Cat Food', 125),
       (4, 'Apples', 97.43);