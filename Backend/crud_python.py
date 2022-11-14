import sqlite3 as sql


#creo la base de datos
miconexion=sql.connect("oficios")

micursor=miconexion.cursor()



#se crea  una tabla --------------------------
#miconexion.execute( "CREATE TABLE USUARIO(DNI INTEGER PRIMARY KEY, CONTRASEÑA VARCHAR (40),  NOMBRE VARCHAR (40), APELLIDO VARCHAR  (40) ,EMAIL VARCHAR(40))")

#------------------------------------------------

#se inserta una fila de datos
#micursor.execute("INSERT INTO USUARIO(DNI, CONTRASEÑA,NOMBRE,APELLIDO,EMAIL ) VALUES(27461002,'1234','FRANCISCO','ERROZ','FRANCISCOERROZ108@GMAIL.COM') ")

#------------------------------------------------

# se insertan dos filas de datos conjuntamente
#varios_usuarios=[

 # (25654123,'miperro727', 'Juan','Martinez','Juanm@gmail.com'),
 # (33427431,'solcito1', 'Lis','Sabbatini','lis.sab@gmail.com')
 #]

#micursor.executemany("INSERT INTO USUARIO VALUES (?,?,?,?,?)", varios_usuarios)
#----------------------------------------------------
#se actualiza un campo----------------------------------

#micursor.execute("UPDATE USUARIO SET DNI=38282828 WHERE DNI=33427431")

#-----------------------------------------------------------

# se trae la informacion de una tabla--------------

#micursor.execute("SELECT * FROM USUARIO")

#usuariosdb=micursor.fetchall()

#print(usuariosdb)
#--------------------------------------------------


#micursor.execute("DROP TABLE USUARIO")


miconexion.commit()
miconexion.close()