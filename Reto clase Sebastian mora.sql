 create database techCorp;
use techCorp;

create table empleados(
idEmpleados int auto_increment primary key,
nombreEmpleado varchar(50) not null,
edad int not null,
salario decimal(10,2),
fechaContratacion date not null,
nombreDepartamento varchar(50) null
);


insert into empleados (idEmpleados, nombreEmpleado, edad, salario, fechaContratacion, nombreDepartamento ) values
(1, 'Angel Amaya', 35, 4500.00, '2021-05-10', 'Ventas'),
(2, 'Juan José Obando', 28, 3900.00, '2019-07-20', 'IT'),
(3, 'Tomas Ruiz', 41, 5200.00, '2018-03-15', 'Recursos Humanos'),
(4, 'Jaime Gamboa', 30, 3000.00, '2022-01-10', 'finanzas'),
(5, 'Felipe Poveda', 25, 2800.00, '2023-09-01','Marketing'),
(6, 'Alejandro Arrollave', 38, 4700.00, '2021-08-05', 'Ventas');


select nombreEmpleado, edad, salario from empleados;

select nombreEmpleado, salario from empleados where salario > 4000;

select nombreEmpleado from empleados where nombreDepartamento = 'Ventas';

select nombreEmpleado, edad from empleados where edad between 30 and 40;

select nombreEmpleado, fechaContratacion from empleados where fechaContratacion > '2020-12-31';

select nombreDepartamento, COUNT(*) as 'totalEmpleados' from empleados group by nombreDepartamento;

select avg(salario) as 'salarioPromedio' from empleados;

select nombreEmpleado from empleados where nombreEmpleado like 'A%' or nombreEmpleado like 'C%';

select nombreEmpleado from empleados where nombreDepartamento not like 'IT';

select nombreEmpleado, salario from empleados where salario =(select max(salario) from empleados);