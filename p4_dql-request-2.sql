select count(*) from order_details as od
left join orders as o on o.id=od.order_id
left join products as p on p.id=od.product_id

left join customers as cust on cust.id=o.customer_id
left join employees as e on e.employee_id=o.employee_id
left join shippers as s on s.id=o.shipper_id

left join suppliers as spp on spp.id=p.supplier_id
left join categories as c on c.id=p.category_id