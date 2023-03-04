CREATE XML SCHEMA COLLECTION ActaSchemaCollection AS
N'<?xml version="1.0" encoding="UTF-16"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">

	<xs:annotation>
		<xs:documentation xml:lang="es-es">
			<info>Este material se ha elaborado con Eclipse</info>
		</xs:documentation>
	</xs:annotation>

	<!-- El esquema tendrá un elemento acta que coincide con el del ejemplar -->
	<xs:element name="acta" type="actaT" />



	<!-- Tipo de datos para el elemento acta -->
	<xs:complexType name="actaT">
		<xs:sequence>
			<xs:element name="fecha" type="xs:date" />
			<xs:element name="modalidad" type="modalidadT" />
			<xs:element name="curso" type="cursoT" />
			<xs:element name="tutor" type="datosPersonalesT" minOccurs="1" maxOccurs="2" />
			<xs:element name="modulo" type="moduloT" minOccurs="1" maxOccurs="4" />
			<xs:element name="normativa" type="normativaT" />
		</xs:sequence>
		<!-- Los atributos siguen a los elementos y no los preceden -->
		<xs:attribute name="id" type="xs:string" fixed="0144"
			use="required" />
		<xs:attribute name="ciclo" type="cicloT" use="required" />
		<xs:attribute name="eval" type="evalT" use="required" />
		<xs:attribute name="tipo" type="tipoActaT" use="optional" />
	</xs:complexType>


	<!-- Definición de datos simples -->
	<xs:simpleType name="modalidadT">
		<xs:restriction base="xs:string">
			<xs:enumeration value="presencial" />
			<xs:enumeration value="distancia" />
			<xs:enumeration value="ordinario" />
		</xs:restriction>
	</xs:simpleType>


	<xs:simpleType name="cursoT">
		<xs:restriction base="xs:string">
			<xs:length value="9" />
			<xs:pattern value="20[0-9][0-9]-20[0-9][0-9]" />
		</xs:restriction>
	</xs:simpleType>
	
	
		<xs:simpleType name="dniT">
			<xs:restriction base="xs:string">
				<xs:length value="10" />
<!-- 				También podéis utilizar: 	<xs:pattern value="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]-[A-Z]" /> -->				
						<xs:pattern value="\d{8}-[A-Z]" />
			</xs:restriction>
		</xs:simpleType>

		<xs:simpleType name="cualificacionT">
<!-- 		También valdría   	<xs:restriction base="xs:positiveInteger"> -->
			<xs:restriction base="xs:integer">
				<xs:minExclusive value="1" />
				<xs:maxInclusive value="10" />
			</xs:restriction>
		</xs:simpleType>
		
			<xs:simpleType name="cicloT">
			<xs:restriction base="xs:string">
				<xs:enumeration value="ASIR" />
				<xs:enumeration value="DAM" />
				<xs:enumeration value="DAW" />
			</xs:restriction>
		</xs:simpleType>

		<xs:simpleType name="evalT">
			<xs:restriction base="xs:string">
				<xs:enumeration value="1" />
				<xs:enumeration value="2" />
				<xs:enumeration value="3" />
				<xs:enumeration value="FINAL" />
				<xs:enumeration value="PE" />
			</xs:restriction>
		</xs:simpleType>

		<xs:simpleType name="tipoActaT">
			<xs:restriction base="xs:string">
				<xs:enumeration value="presencial" />
				<xs:enumeration value="telematica" />
			</xs:restriction>
		</xs:simpleType>
		
<!--  Tipos complejos (que contienen elementos anidados, elementos vacíos o con atributos) -->

	<!-- Definición reutilizable del tipo de datos personales que contempla 
		ya los dos posibles órdenes -->
	<xs:complexType name="datosPersonalesT">
		<xs:choice>
			<xs:sequence>
				<xs:element name="nombre" type="xs:string" />
				<xs:element name="apellido1" type="xs:string" />
				<xs:element name="apellido2" type="xs:string" />
				<xs:element name="dni" type="dniT" />
			</xs:sequence>
			<xs:sequence>
				<xs:element name="apellido1" type="xs:string" />
				<xs:element name="apellido2" type="xs:string" />
				<xs:element name="nombre" type="xs:string" />
				<xs:element name="dni" type="dniT" />
			</xs:sequence>
		</xs:choice>
	</xs:complexType>

	


		
		<!-- Respuesta a pregunta 4: Si en datos personales se permitieran los 
			4 elementos en cualquier orden se usaría all:
			
			<xs:complexType name="datosPersonalesT">
			<xs:all>
				<xs:element name="nombre" type="xs:string" />
				<xs:element name="apellido1" type="xs:string" />
				<xs:element name="apellido2" type="xs:string" />
				<xs:element name="dni" type="dniT" />
			</xs:all>
		</xs:complexType>
			 -->


		
		
		<xs:complexType name="moduloT">
			<xs:sequence>
				<xs:element name="profesor" type="profesorT" />
<!-- 				normalmente hay un máximo en la matrícula, supongamos 50 (esto último no se incluía en el enunciado) -->
				<xs:element name="alumno" type="alumnoT" minOccurs="0"
					maxOccurs="50" />
			</xs:sequence>
			<xs:attribute name="codigo" type="xs:ID" use="required" />
		</xs:complexType>
		
		
		<!-- alumnoT extiende de datosPersonalesT añadiéndole un nuevo elemento -->
		<xs:complexType name="alumnoT">
			<xs:complexContent>
				<xs:extension base="datosPersonalesT">
					<xs:sequence>
						<xs:element name="cualificacion" type="cualificacionT" />
					</xs:sequence>
				</xs:extension>
			</xs:complexContent>
		</xs:complexType>
		
		<!-- profesorT extiende de datosPersonalesT añadiéndole un nuevo atributo -->
		<xs:complexType name="profesorT">
			<xs:complexContent>
				<xs:extension base="datosPersonalesT">
					<xs:attribute name="mod" type="xs:IDREF"
						use="required" />
				</xs:extension>
			</xs:complexContent>
		</xs:complexType>	



		<xs:complexType name="normativaT">
			<xs:attribute name="ref" type="xs:NMTOKEN"
				use="required" />
		</xs:complexType>




</xs:schema>' ;
GO