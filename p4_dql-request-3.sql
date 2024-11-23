select count(*) from order_details as od
inner join orders as o on o.id=od.order_id
inner join products as p on p.id=od.product_id

inner join customers as cust on cust.id=o.customer_id
inner join employees as e on e.employee_id=o.employee_id
inner join shippers as s on s.id=o.shipper_id

inner join suppliers as spp on spp.id=p.supplier_id
inner join categories as c on c.id=p.category_id

where e.employee_id > 3 and e.employee_id <= 10 