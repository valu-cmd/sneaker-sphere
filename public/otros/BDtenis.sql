USE BDtenis;

CREATE TABLE productos(
    id_prod INT PRIMARY KEY,
    nombre_prod VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2),
    marca_calz VARCHAR(20),
    tipo_calz VARCHAR(50),
    desc_prod TEXT,
    stock INT
);

ALTER TABLE productos ADD tipo_calz VARCHAR(50);

(1, 'Converse Chuck Taylor All Star Classic', 1019, 'Converse','Casual Sneakers','Un clásico atemporal, perfecto para un estilo informal y versátil.', 100);
(2, 'Puma Ignite XT Running', 1528, 'Puma','Running Shoes','Diseñados para una carrera cómoda y energética, con una excelente amortiguación.'40);
(3, 'Nike Air Zoom Structure 24', 2038, 'Nike','Running Shoes', 'Ofrecen estabilidad y soporte para una pisada suave y controlada en cada paso.', 30);
(4, 'Adidas Ultraboost Uncaged', 2547, 'Adidas', 'Running Shoes', 'Combina estilo y rendimiento, con una parte superior sin costuras y una amortiguación reactiva.', 60);
(5, 'Vans Old Skool Checkerboard', 1189, 'Vans', 'Skate Shoes', 'El estilo clásico de Vans con un patrón de tablero de ajedrez icónico, perfecto para el skate.', 80);
(6, 'Puma Clyde Court', 1868, 'Puma', 'Basketball Shoes', 'Inspirados en el legado del baloncestista Walt "Clyde" Frazier, ofrecen rendimiento y estilo en la cancha.', 30);
(7, 'Nike Air Zoom Pegasus 38', 2038, 'Nike', 'Running Shoes', 'La última versión de la serie Pegasus, con una amortiguación suave y una sensación de velocidad.', 70);
(8, 'Adidas NMD R1', 2207, 'Adidas', 'Casual Sneakers', 'Estilo urbano y comodidad sin igual con la tecnología Boost y un diseño futurista.', 100);
(9, 'Vans Slip-On Pro', 1104, 'Vans', 'Skate Shoes', 'Versión mejorada del Slip-On con mayor durabilidad y suela UltraCush HD para comodidad.', 70);
(10, 'Converse Jack Purcell Canvas', 1104, 'Converse', 'Casual Sneakers', 'Un diseño elegante con la icónica puntera de goma y suela de tracción.', 80);
(11, 'Nike Air Force 1', 1528, 'Nike', 'Casual Sneakers', 'Un icono de la cultura sneaker con suela Air y un estilo versátil que nunca pasa de moda.', 20);
(12, 'Adidas Superstar', 1358, 'Adidas', 'Casual Sneakers', 'Un ícono de la moda urbana, con la clásica puntera de concha y las 3 Rayas icónicas de Adidas.', 70);
(13, 'Vans Authentic', 934, 'Vans', 'Casual Sneakers', 'Auténticos y versátiles, perfectos para un estilo informal y relajado.', 90);
(14, 'Puma RS-X', 1698, 'Puma', 'Casual Sneakers', 'Diseño retro con una mezcla de colores llamativa y tecnología de amortiguación avanzada.', 70);
(15, 'Nike React Infinity Run Flyknit', 2547, 'Nike', 'Running Shoes', 'Diseñados para la comodidad y la prevención de lesiones, con una amortiguación suave y estable.', 90);
(16, 'Adidas Stan Smith', 1274, 'Adidas', 'Casual Sneakers', 'Elegancia minimalista con el clásico diseño de Stan Smith y detalles en contraste.', 80);
(17, 'Vans Sk8-Hi', 1274, 'Vans', 'Skate Shoes', 'Un clásico del skateboarding con cuello acolchado y durabilidad para las sesiones en la tabla.', 30);
(18, 'Converse One Star', 1189, 'Converse', 'Casual Sneakers', 'Estilo desenfadado con el distintivo logo de la estrella y una suela cómoda.', 20);
(19, 'Nike Zoom Freak 3', 2377, 'Nike', 'Basketball Shoes', 'Diseñados para el jugador Giannis Antetokounmpo, con soporte y tracción para movimientos explosivos.', 90);
(20, 'Adidas Continental 80', 1358, 'Adidas', 'Casual Sneakers', 'Estilo retro de los años 80 con una suela dividida y detalles de ventana lateral.', 30);
(21, 'Vans Era', 1019, 'Vans', 'Skate Shoes', 'Diseño clásico con detalles de doble costura y suela vulcanizada para mayor durabilidad.', 20);
(22, 'Nike KD Trey 5 VIII', 1868, 'Nike', 'Basketball Shoes', 'Diseñados para el jugador Kevin Durant, con tracción multidireccional y soporte ligero.', 80);
(23, 'Puma Cali', 1613, 'Puma', 'Casual Sneakers', 'Estilo inspirado en la costa oeste con una silueta retro y detalles llamativos.', 30);
(24, 'Adidas ZX Flux', 1528, 'Adidas', 'Casual Sneakers', 'Estilo minimalista con una parte superior de malla transpirable y detalles de estilo retro.', 70);
(25, 'Vans Sk8-Mid', 1189, 'Vans', 'Skate Shoes', 'Versión intermedia del Sk8-Hi con un perfil más bajo y el mismo estilo skateboarding.', 90);

------------------------------------------------------------------------------------------------------------
CREATE TABLE ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_prod INT,
    fecha_venta DATE,
    cantidad INT,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_prod) REFERENCES productos(id_prod)
);

CREATE TABLE detalle_ventas (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_venta INT,
    id_prod INT,
    cantidad INT,
    total_producto DECIMAL(10, 2),
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    FOREIGN KEY (id_prod) REFERENCES productos(id_prod)
);