alter table categories
add primary key (id);

alter table customers
add primary key (id);

alter table employees
add primary key (employee_id);

alter table shippers
add primary key (id);

alter table suppliers
add primary key (id);

alter table products
add primary key (id),
add constraint fk_products_suppliers foreign key (supplier_id) references suppliers(id),
add constraint fk_products_categories foreign key (category_id) references categories(id);

alter table orders
add primary key (id),
add constraint fk_orders_customer foreign key (customer_id) references customers(id),
add constraint fk_orders_employee foreign key (employee_id) references employees(employee_id),
add constraint fk_orders_shipper foreign key (shipper_id) references shippers(id);

alter table order_details
add primary key (id),
add constraint fk_order_details_orders foreign key (order_id) references orders(id),
add constraint fk_order_details_products foreign key (product_id) references products(id);