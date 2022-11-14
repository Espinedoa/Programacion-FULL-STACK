<<<<<<<< HEAD:Backend/clase_usuario.py



class usuario:
      Nombre=""
      Apellido=""
      Dni=0

      def __init__(self,nombre,apellido, dni):
        self.Nombre=nombre
        self.Apellido=apellido
        self.Dni=dni
  
      def get_Nombre(self):
        return self.Nombre

      def set_Nombre(self, nombre):
         self.Nombre=nombre  

      def get_Dni(self):
        return self.Dni

      def set_Dni(self, dni):
         self.Dni=dni 


      def get_Apellido(self):
        return self.Apellido

      def set_Apellido(self, apellido):
       self.Apellido=apellido

      def mostrar_datos(self):
         print("su nombre es:" +self.Nombre+ " "+self.Apellido + " y su Dni es :" +self.Dni)

nombre1=input("ingrese su nombre")
apellido1=input("ingrese su apellido")
dni1=input("ingrese su dni")
usuario1=usuario(nombre1,apellido1,dni1)
usuario1.mostrar_datos()
========

class usuario:
      Nombre=""
      Apellido=""
      Dni=0

      def __init__(self,nombre,apellido, dni):
        self.Nombre=nombre
        self.Apellido=apellido
        self.Dni=dni
  
      def get_Nombre(self):
        return self.Nombre

      def set_Nombre(self, nombre):
         self.Nombre=nombre  

      def get_Dni(self):
        return self.Dni

      def set_Dni(self, dni):
         self.Dni=dni 


      def get_Apellido(self):
        return self.Apellido

      def set_Apellido(self, apellido):
       self.Apellido=apellido

      def mostrar_datos(self):
         print("su nombre es:" +self.Nombre+ " "+self.Apellido + " y su Dni es :" +self.Dni)

nombre1=input("ingrese su nombre")
apellido1=input("ingrese su apellido")
dni1=input("ingrese su dni")
usuario1=usuario(nombre1,apellido1,dni1)
usuario1.mostrar_datos()

>>>>>>>> cc75939988b73421c3efab02c0f1155a9244d02d:Backend/clases.py
