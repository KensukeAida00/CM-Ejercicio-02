//Creado por Aquino Santiago Rogelio Gerardo
//Para la clase de Computo movil
//Fecha: 13/12/2020
/*operaciones matematicas*/
import Glibc
/*Operaciones con String*/
import Foundation
class ejercicioUno{
  let base:Int
  var res:Int
  var n:Int

  init(){
    self.base=2
    self.res=2
    print("Ingrese numero entero para realizar la operacion 2^n",
          "\nN=")
    let n=readLine()!
    self.n=Int(n)!
  }
  func upperNum(n:Int){
    if n<=1{
      if n==0{
        self.res=1
      }
      return
    }
    self.res=self.res*self.base
    return(upperNum(n:n-1))
  }
  func prepUpper(){
    upperNum(n:self.n)
    print("Resultado de 2^n=",self.res)
    return
  }
}

class ejercicioDos{
  let a:Int
  let b:Int
  var sum:Double

  init(){
    print("Ingrese numeros enteros para hacer la suma 1^a+...+b^a",
          "\na=")
    self.a=Int(readLine()!)!
    print("Ingrese numeros enteros para hacer la suma 1^a+...+b^a",
          "\nb=")
    self.b=Int(readLine()!)!
    self.sum=0
  }
  func suma(n:Int){
    let r=pow(Double(n),Double(self.a))
    self.sum=self.sum+r
    if n==self.b{
      return
    }
    return(suma(n:n+1))
  }
  func resSuma(){
    suma(n:1)
    print("Resultado de 1^a+...+b^a=",self.sum)
    return
  }
}

class ejercicioTres{
  let numero:String
  let numArray:[Character]

  init(){
    print("Ingrese el numero de telefono con formato (nn)-nnnn-nnnn",
    "\nNumero:")
    self.numero=readLine()!
    self.numArray=Array(numero)
  }

  func validaNum(i:Int)->Bool{
    if i==14{
      return true
    }
    if i != 4&&i != 9&&i != 0&&i != 3{
      switch self.numArray[i]{
        case "0"..."9":
        return validaNum(i:i+1)
        default:
        print("Error, no es un numero valido")
        return false
      }
    }
    return validaNum(i:i+1)
  }
  func validaExtras()->Bool{
    if self.numArray.count != 14{
      print("Tamaño incorrecto")
      return false
    }
    if self.numArray[4] != "-" || self.numArray[9] != "-"{
      print("Faltan el/los '-'")
      return false
    }
    if self.numArray[0] != "(" || self.numArray[3] != ")"{
      print("Falta(n) el/los '()'")
      return false
    }
    return validaNum(i:0)
  }
  func validador(){
    if validaExtras()==true{
      print("El numero es valido")
      return
    }
    else{
      print("El numero no es valido")
    }
    return
  }
}

class ejercicioCuatro{
  var recetario: [String]
  var indiceRece:[Int]

  init(){
    let rec0: String="Hojaldres de queso y setas\nIngredientes:\n 1 masa de hojaldre\n 1 diente de ajo\n 100 g. de champiñones\n 50 g. de mozarella\n 50 g, de queso cheddar.\nElaboración:\n Cocinar los champiñones en una sartén con un diente de ajo picado.\n Estirar la masa de hojaldre y colocar los ingredientes en el centro.\n Doblar la masa para cubrir los ingredientes.\n Hornear a 180 ºC hasta que esté dorado el hojaldre."
    let rec1: String="Crema de calabaza.\nIngredientes:\n 1 calabaza\n 2 cebollas\n 2 dientes de ajo\n 1 cucharada de mantequilla\n Almendras laminadas para decorar.\n Elaboración:\n Cortar la calabaza en trozos y salpimentar.\n Hornear la calabaza a 180º C hasta que esté blanda.\n Caramelizar las cebollas a fuego lento con la mantequilla.\n Freir los ajos previamente troceados.\n Licuar la calabaza con el ajo y la cebolla.\n Añadir un poco de agua si es necesario, para que quede la consistencia de crema.\n Decorar con las almendras laminadas."
    let rec2: String="Salmón al horno. \nIngredientes:\n 500 g. de salmón\n 1 limón\n 1 cucharadita de eneldo\n 1 cucharadita de pimienta\n Alcaparras al gusto. \nElaboración: Engrasar un fuente de horno y colocar el salmón con la piel hacia abajo.\n Salpimentar y añadir el eneldo y la ralladura del limón.\n Hornear a 180º C durante 15 minutos.\n Añadir las alcaparras antes de servir."
    let rec3: String="Tartaletas de manzana. \nIngredientes: 3 manzanas\n 250 g. de hojaldre\n 2 cucharadas de mantequilla\n 1 cucharada de azúcar moreno. \nElaboración:\n Cortar las manzanas peladas en láminas finas.\n Estirar el hojaldre, pintar con mantequilla y espolvorear azúcar moreno.\n Colocar la manzana sobre el hojaldre hecho tiras, y enrollar para que quede forma de flor.\n Hornear a 180º C hasta que el hojaldre se dore."
    let rec4: String="Tostada de queso brie.\nIngredientes:\n 1 cebolla grande\n 1 cucharada de mantequilla\n Pan cortado en rebanadas\n Queso brie\n Rodajas de tomate.\nElaboración:\n Partir la cebolla en tiras finas.\n Poner la mantequilla en una sartén y cuando esté derretida añadir la cebolla.\n Cocinar a fuego muy lento para que la cebolla no se deshidrate.\n Tostar el pan, añadir el queso brie y encima la cebolla cocinada y unas rodajas de tomate."
    let rec5: String="Coliflor al horno.\nIngredientes:\n 1 coliflor\n 1 cebolleta\n 1 huevo grande\n 300 g. pan rallado\n Queso parmesano.\nElaboración:\n Cocer la coliflor durante 10 minutos.\n Meter en una picadora la coliflor cocida y la cebolleta.\n Añadir el huevo, el pan rallado y el queso, y mezclar bien hasta formar una masa.\n Hacer bolitas con la masa y hornear a 180º C durante 15 minutos."
    let rec6: String="Rollitos de pollo con queso.\nIngredientes:\n 2 pechugas de pollo deshuesadas\n 2 cucharadas queso azul\n 100 g. de nueces\n 4 lonchas de bacon.\n Elaboración:\n Amasar los filetes con un rodillo hasta conseguir un grosor uniforme.\n Untar el queso azul, echar las nueces picadas y enrollar el filete.\n Cubrir el rollo de carne con las lonchas de bacon y freir hasta que el bacon se dore.\n Hornear a 180º C alrededor de media hora para que se cocine el pollo."
    let rec7: String="Mousse de café\nIngredientes:\n 1 cucharada de café instantáneo\n 400 ml. de leche condensada\n 400 ml. de crema de leche\n Arándanos azules.\nElaboración:\n Calentar el café instantáneo y la leche condensada en una olla a fuego lento por 5 minutos.\n Enfriar en la nevera la mezcla durante 30 minutos.\n Añadir la crema de leche y batir hasta que quede consistencia de mousse.\n Decorar con café instantáneo o arándanos azules al gusto."
    let rec8: String="Pasta con camarones al ajo.\nIngredientes:\n 600 g. de camarones\n 400 g. de espagueti\n 3 dientes de ajo picados\n 1 chile picado\n 3 cucharaditas de perejil picado.\nElaboración:\n Cocer los espaguetis al dente.\n Rehogar el ajo y el chile junto al perejil.\n Añadir a la sarten los camarones.\n Escurrir el espagueti y añadirle la mezcla anterior."
    let rec9: String="Lasaña de patata\nIngredientes:\n 2 patatas pequeñas\n 300 g. de salsa bolognesa\n 210 g. de queso rallado\n 1 manojo de espinacas.\nElaboración:\n Cortar las patatas en finas capas y colocarlas en la base de un molde para hornear.\n Verter 100 gr. de salsa boloñesa y colocar en capas la espinaca y el queso.\n Repetir proceso en función de cómo queramos el tamaño.\n Hornear 20 minutos a 200º C."
    self.recetario=[rec0,rec1,rec2,rec3,rec4,rec5,
    rec6,rec7,rec8,rec9]
    self.indiceRece=[]
  }
  func imprimeRecetas(){
    if self.indiceRece.count==0{
      print("No se encontraron recetas")
      return
    }
    self.indiceRece=self.indiceRece.sorted()
    var i:Int=0
    var j:Int=1
    while i<self.indiceRece.count{
      if i==0{
        print("Receta ",j,"\n",recetario[indiceRece[i]],"\n\n")
        j=j+1
      }
      else{
        if indiceRece[i] != indiceRece[i-1]{
          print("Receta ",j,"\n",recetario[indiceRece[i]],"\n\n")
          j=j+1
        }
      }
      i=i+1
    }
    return
  }
  func buscaEnReceta(ingrediente:String,puestoIndice:Int){
    if puestoIndice<self.recetario.count{
      if self.recetario[puestoIndice].lowercased().contains(ingrediente){
        self.indiceRece.append(puestoIndice)
        print("Se encontro receta para:",ingrediente)
      }
      return buscaEnReceta(ingrediente:ingrediente,puestoIndice:puestoIndice+1)
    }
    return
  }
  func buscaIngredientes(ingredientes:[String],puestoIng:Int){
    if puestoIng<ingredientes.count{
      buscaEnReceta(ingrediente:ingredientes[puestoIng],puestoIndice:0)
      buscaIngredientes(ingredientes:ingredientes,puestoIng:puestoIng+1)
    }
    return
  }
  func ingredientesPedidos(){
    print("Ingrese los ingredientes a buscar, separando por una coma [a,b,c]","\nIngredientes:")
    let ingredientes = readLine()!
    let listIngredie = ingredientes.components(separatedBy: ",")
    buscaIngredientes(ingredientes:listIngredie,puestoIng:0)
    imprimeRecetas()
  }
  
}

class ejercicioCinco{
  var listProducto:[Int]
  var resultado:[Int]

  init(){
    self.listProducto=[]
    self.resultado=[]
  }

  func productoMultipl(i:Int,j:Int){
    if  listProducto.count==j{
      return
    }
    if i==j{
      return productoMultipl(i:i,j:j+1)
    }
    resultado[i]=resultado[i]*listProducto[j]
    return productoMultipl(i:i,j:j+1)
  }

  func productoFuncion(i:Int){
    if  listProducto.count==i{
      return
    }
    productoMultipl(i:i,j:0)
    return productoFuncion(i:i+1)
  
  }
  func desicion(i:Int){
    if readLine()! == "y"{
      introduceNumeros(i:i+1)
    }
    else{
      print("Numeros introducidos:\n",self.listProducto)
      if  listProducto.count==1{
        print("No se realizo la operacion al solo introducir un numero")
        return
      }
      productoFuncion(i:0)
    }
    return
  }
  func introduceNumeros(i:Int){
    print("Introduce el numero ",i+1,"\nNumero:")
    let numero = readLine()!
    listProducto.append(Int(numero)!)
    resultado.append(1)
    print("¿Añadir otro? [y=si/otro=no]")
    desicion(i:i)
    return
  }
  func productoInicio(){
    print("Introduce los numeros a crear producto de los demas")
    introduceNumeros(i:0)
    print("Producto de los demas numeros exceptuando el mismo:\n",resultado)
  }

}

func uno(){
  let ejuno=ejercicioUno()
  ejuno.prepUpper()
  return
}

func dos(){
  let ejdos=ejercicioDos()
  ejdos.resSuma()
  return
}

func tres(){
  let ejtres=ejercicioTres()
  ejtres.validador()
  return
}
func cuatro(){
  let ejcuatro=ejercicioCuatro()
  ejcuatro.ingredientesPedidos()
  return
}
func cinco(){
  let ejcinco=ejercicioCinco()
  ejcinco.productoInicio()
  return
}
func desicion(){
  print(" 1.-2^n\n",
        "2.-1^a+2^a+...+b^a\n",
        "3.-Validar numero telefonico tipo (nn)-nnnn-nnnn\n",
        "4.-Ver recetas con uno o varios ingredientes\n",
        "5.-Producto de numeros\n",
        "6.-Salir\n",
        "Respuesta:")
  switch readLine()!{
        case "1":
        uno()
        case "2":
        dos()
        case "3":
        tres()
        case "4":
        cuatro()
        case "5":
        cinco()
        case "6":
        print("Adios\n",
              "Creado por Aquino Santiago Rogelio Gerardo")
        return
        default:
        print("Error\nNo es un numero valido, intente otra vez")
        return desicion()
      }
  print("¿Realizar otra actividad? [y=si/otro=no]")
  if readLine()! == "y"{
    print("Elija que operacion realizar:\n")
    return desicion()
  }
  else{
    print("Adios\nCreado por Aquino Santiago Rogelio Gerardo")
    return
  }
  
}
func main(){
  print("Bienvenido, elija que operacion realizar:\n")
  desicion()
  return  
}
main()