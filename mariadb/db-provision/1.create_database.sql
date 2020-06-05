create database prestador_libros character set latin1 collate latin1_bin;

-- prestador_libros.autor definition
CREATE TABLE `autor` (
  `id_autor` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE latin1_bin NOT NULL,
  `nacionalidad` varchar(100) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- prestador_libros.libro definition
CREATE TABLE `libro` (
  `id_libro` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE latin1_bin NOT NULL,
  `estado_prestamo` int(11) NOT NULL,
  PRIMARY KEY (`id_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- prestador_libros.autor_libro definition
CREATE TABLE `autor_libro` (
  `id_autor` bigint(20) NOT NULL,
  `id_libro` bigint(20) NOT NULL,
  KEY `autor_libro_FK` (`id_autor`),
  KEY `autor_libro_FK_1` (`id_libro`),
  CONSTRAINT `autor_libro_FK` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`),
  CONSTRAINT `autor_libro_FK_1` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;