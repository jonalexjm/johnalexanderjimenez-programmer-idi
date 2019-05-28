use neptuno3;
show tables;
#Test MySql 1
SELECT pedido.IdPedido, cliente.IdCliente, empleado.IdEmpleado, CONCAT(empleado.Nombre,' ',empleado.Apellidos)  As Empleado
FROM pedido
INNER JOIN cliente ON pedido.IdCliente=cliente.IdCliente 
INNER JOIN empleado ON pedido.IdEmpleado=empleado.IdEmpleado
where cliente.NombreEmpresa="Alfreds Futterkiste";

#Test MySql 2
SELECT pedido.IdPedido, cliente.IdCliente, empleado.IdEmpleado, CONCAT(empleado.Nombre,' ',empleado.Apellidos)  As Empleado
FROM pedido
INNER JOIN cliente ON pedido.IdCliente=cliente.IdCliente 
INNER JOIN empleado ON pedido.IdEmpleado=empleado.IdEmpleado
where empleado.Nombre="Anne" AND empleado.Apellidos="Dodsworth";

#Test MySql 3
SELECT pedido.IdPedido, cliente.IdCliente, empleado.IdEmpleado, CONCAT(empleado.Nombre,' ',empleado.Apellidos)  As Empleado
FROM pedido
INNER JOIN cliente ON pedido.IdCliente=cliente.IdCliente 
INNER JOIN empleado ON pedido.IdEmpleado=empleado.IdEmpleado
where empleado.Nombre="Anne" AND empleado.Apellidos="Dodsworth" AND pedido.CiudadDestinatario="Branderburg" ;

#Test MySql 4
select PrecioUnidad*Cantidad-(PrecioUnidad*Cantidad*Descuento) AS PrecioTotal from detalles_de_pedido;

#Test MySql 5

SELECT P.* 
     FROM producto p
     left join detalles_de_pedido d
     on d.IdProducto = p.IdProducto
     where d.IdProducto IS NULL;
                               
                                                      


#Test MySql 6
SELECT producto.NombreProducto
FROM producto
left JOIN detalles_de_pedido ON detalles_de_pedido.IdProducto = producto.IdProducto;

#Test MySql 7
Insert into empleado(IdEmpleado, 
                     Apellidos, 
                     Nombre, 
                     Cargo, 
                     Tratamiento, 
                     FechaNacimiento, 
                     FechaContratación, 
                     Direccion,
                     Ciudad, 
                     Region, 
                     CodPostal, 
                     Pais, 
                     TelDomicilio, 
                     Extension, 
                     Foto, 
                     Notas, 
                     Jefe) values(34567,"Idi", "Test", "contaoor", "diabetis", 
"1987-08-08", "2012-08-08", "calle34 d", "cali", "suroccidente", "13455", "colombia","456784567", "1234","foto.jpg", 
"casita", 12);

#Test MySql 7
UPDATE empleado SET FechaNacimiento='1990-01-01' WHERE Nombre='Clark ' and Apellidos= "Smith ";

#Test MySql 8
ALTER TABLE empleado add test varchar(5) DEFAULT 'Test';

ALTER TABLE empleado
MODIFY test varchar(5) NOT NULL
AFTER IdEmpleado;





