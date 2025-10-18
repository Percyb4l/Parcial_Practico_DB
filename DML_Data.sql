-- Insertar 10 registros en Ciudad
INSERT INTO Ciudad (nombre_ciudad, codigo_postal) VALUES
('Cali', '760001'),
('Bogotá', '110111'),
('Medellín', '050001'),
('Barranquilla', '080001'),
('Cartagena', '130001'),
('Bucaramanga', '680001'),
('Pereira', '660001'),
('Manizales', '170001'),
('Cúcuta', '540001'),
('Santa Marta', '470001');

-- Insertar 10 registros en Usuario (Clientes y Empleados)
INSERT INTO Usuario (nombre, apellido, tipo_usuario, condicion_especial, ciudad_id, telefono, email, sms) VALUES
('Carlos', 'Ramirez', 'Cliente', NULL, 1, '3101234567', 'carlos.r@email.com', '3101234567'),
('Lucia', 'Gomez', 'Cliente', 'Adulto Mayor', 2, '3111234567', 'lucia.g@email.com', '3111234567'),
('Pedro', 'Martinez', 'Empleado', NULL, 1, '3121234567', 'pedro.m@servilimar.com', '3121234567'),
('Ana', 'Fernandez', 'Empleado', NULL, 3, '3131234567', 'ana.f@servilimar.com', '3131234567'),
('Sofia', 'Vargas', 'Cliente', 'Embarazo', 4, '3141234567', 'sofia.v@email.com', '3141234567'),
('Javier', 'Hernandez', 'Proveedor', NULL, 5, '3151234567', 'javier.h@email.com', '3151234567'),
('Maria', 'Lopez', 'Cliente', NULL, 1, '3161234567', 'maria.l@email.com', '3161234567'),
('Andres', 'Perez', 'Empleado', NULL, 2, '3171234567', 'andres.p@servilimar.com', '3171234567'),
('Laura', 'Sanchez', 'Cliente', 'Requiere silla de ruedas', 6, '3181234567', 'laura.s@email.com', '3181234567'),
('Diego', 'Rodriguez', 'Empleado', NULL, 1, '3191234567', 'diego.r@servilimar.com', '3191234567');

-- Insertar 10 registros en Empleado (corresponden a usuarios de tipo Empleado)
INSERT INTO Empleado (usuario_id, cargo, departamento) VALUES
(3, 'Asesor de Servicio', 'Atención al Cliente'),
(4, 'Consultor Senior', 'Consultoría'),
(8, 'Jefe de Despachos', 'Logística'),
(10, 'Recepcionista', 'Administrativo'),
(2, 'Gerente General', 'Dirección'),
(5, 'Analista de Operaciones', 'Operaciones'),
(6, 'Coordinador de Entregas', 'Logística'),
(7, 'Especialista de Soporte', 'Atención al Cliente'),
(9, 'Asistente Administrativo', 'Administrativo'),
(1, 'Consultor Junior', 'Consultoría');


-- Insertar 10 registros en Servicio
INSERT INTO Servicio (nombre_servicio, descripcion, estado) VALUES
('Despacho de artículos', 'Coordinación y envío de mercancía.', 'activo'),
('Entrega de artículos', 'Recepción y entrega final de productos al cliente.', 'activo'),
('Recepción de artículos', 'Recepción de mercancía de proveedores.', 'activo'),
('Atención al cliente', 'Soporte y resolución de dudas generales.', 'activo'),
('Consultoría especializada', 'Asesoría profesional en logística y operaciones.', 'activo'),
('PQRS', 'Gestión de Peticiones, Quejas, Reclamos y Sugerencias.', 'activo'),
('Facturación', 'Trámites relacionados con facturas y pagos.', 'activo'),
('Soporte Técnico', 'Asistencia técnica sobre la plataforma.', 'inactivo'),
('Agendamiento VIP', 'Servicio premium de agendamiento sin filas.', 'activo'),
('Devoluciones', 'Gestión y procesamiento de devoluciones de mercancía.', 'activo');

-- Insertar 10 registros en Turno
INSERT INTO Turno (usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado) VALUES
(1, 4, 1, '2025-10-20', '09:00:00', '09:30:00', 'atendido'),
(2, 4, 1, '2025-10-20', '09:30:00', '10:00:00', 'atendido'),
(5, 1, 3, '2025-10-21', '10:00:00', '10:15:00', 'pendiente'),
(6, 3, 4, '2025-10-21', '11:00:00', NULL, 'pendiente'),
(7, 2, 3, '2025-10-22', '14:00:00', '14:30:00', 'cancelado'),
(9, 5, 2, '2025-10-23', '08:00:00', NULL, 'pendiente'),
(1, 1, 3, '2025-10-23', '09:00:00', '09:15:00', 'atendido'),
(2, 10, 4, '2025-10-24', '15:00:00', NULL, 'pendiente'),
(5, 7, 1, '2025-10-24', '16:00:00', '16:20:00', 'atendido'),
(7, 6, 2, '2025-10-25', '10:00:00', NULL, 'pendiente');

-- Insertar 3 registros en MedioContacto
INSERT INTO MedioContacto (nombre_medio) VALUES
('email'),
('sms'),
('telefono');

-- Insertar 10 registros en Notificacion
INSERT INTO Notificacion (usuario_id, medio_id, mensaje, fecha_envio, estado) VALUES
(1, 1, 'Su turno para Atención al cliente ha sido confirmado.', '2025-10-19 18:00:00', 'enviado'),
(1, 2, 'Recordatorio: su turno es mañana a las 09:00 AM.', '2025-10-19 19:00:00', 'enviado'),
(2, 1, 'Su turno para Atención al cliente ha sido confirmado.', '2025-10-19 18:05:00', 'enviado'),
(5, 1, 'Su turno para Despacho de artículos ha sido confirmado.', '2025-10-20 10:00:00', 'enviado'),
(6, 2, 'Su turno para Recepción de artículos ha sido agendado.', '2025-10-20 11:30:00', 'enviado'),
(7, 1, 'Su turno para Entrega de artículos ha sido cancelado.', '2025-10-21 09:00:00', 'enviado'),
(9, 1, 'Confirmación de turno para Consultoría especializada.', '2025-10-22 14:00:00', 'enviado'),
(2, 2, 'Recordatorio: su turno para Devoluciones es mañana.', '2025-10-23 18:00:00', 'enviado'),
(5, 1, 'Su turno de Facturación ha sido atendido exitosamente.', '2025-10-24 16:25:00', 'enviado'),
(7, 1, 'Su turno para PQRS ha sido agendado para el 25/10/2025.', '2025-10-24 11:00:00', 'enviado');