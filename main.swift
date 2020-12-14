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
    let rec0: String="Hojaldres de queso y setas\nIngredientes: 1 masa de hojaldre, 1 diente de ajo, 100 g. de champiñones,50 g. de mozarella, 50 g, de queso cheddar.\nElaboración: Cocinar los champiñones en una sartén con un diente de ajo picado. Estirar la masa de hojaldre y colocar los ingredientes en el centro. Doblar la masa para cubrir los ingredientes. Hornear a 180 ºC hasta que esté dorado el hojaldre."
    let rec1: String="Crema de calabaza.\nIngredientes: 1 calabaza, 2 cebollas, 2 dientes de ajo, 1 cucharada de mantequilla, Almendras laminadas para decorar. \nElaboración: Cortar la calabaza en trozos y salpimentar. Hornear la calabaza a 180º C hasta que esté blanda. Caramelizar las cebollas a fuego lento con la mantequilla. Freir los ajos previamente troceados. Licuar la calabaza con el ajo y la cebolla. Añadir un poco de agua si es necesario, para que quede la consistencia de crema. Decorar con las almendras laminadas."
    let rec2: String="Salmón al horno. \nIngredientes: 500 g. de salmón, 1 limón, 1 cucharadita de eneldo, 1 cucharadita de pimienta, Alcaparras al gusto. \nElaboración: Engrasar un fuente de horno y colocar el salmón con la piel hacia abajo. Salpimentar y añadir el eneldo y la ralladura del limón. Hornear a 180º C durante 15 minutos. Añadir las alcaparras antes de servir."
    let rec3: String="Tartaletas de manzana. \nIngredientes: 3 manzanas, 250 g. de hojaldre, 2 cucharadas de mantequilla, 1 cucharada de azúcar moreno. \nElaboración: Cortar las manzanas peladas en láminas finas. Estirar el hojaldre, pintar con mantequilla y espolvorear azúcar moreno. Colocar la manzana sobre el hojaldre hecho tiras, y enrollar para que quede forma de flor. Hornear a 180º C hasta que el hojaldre se dore."
    let rec4: String="Tostada de queso brie.\nIngredientes: 1 cebolla grande, 1 cucharada de mantequilla,Pan cortado en rebanadas, Queso brie,Rodajas de tomate.\nElaboración: Partir la cebolla en tiras finas. Poner la mantequilla en una sartén y cuando esté derretida añadir la cebolla. Cocinar a fuego muy lento para que la cebolla no se deshidrate. Tostar el pan, añadir el queso brie y encima la cebolla cocinada y unas rodajas de tomate."
    let rec5: String="Coliflor al horno.\nIngredientes: 1 coliflor, 1 cebolleta, 1 huevo grande, 300 g. pan rallado, Queso parmesano.\nElaboración: Cocer la coliflor durante 10 minutos. Meter en una picadora la coliflor cocida y la cebolleta. Añadir el huevo, el pan rallado y el queso, y mezclar bien hasta formar una masa. Hacer bolitas con la masa y hornear a 180º C durante 15 minutos."
    let rec6: String="Rollitos de pollo con queso.\nIngredientes: 2 pechugas de pollo deshuesadas, 2 cucharadas queso azul, 100 g. de nueces, 4 lonchas de bacon.\n Elaboración: Amasar los filetes con un rodillo hasta conseguir un grosor uniforme. Untar el queso azul, echar las nueces picadas y enrollar el filete. Cubrir el rollo de carne con las lonchas de bacon y freir hasta que el bacon se dore. Hornear a 180º C alrededor de media hora para que se cocine el pollo."
    let rec7: String="Mousse de café\nIngredientes: 1 cucharada de café instantáneo, 400 ml. de leche condensada, 400 ml. de crema de leche, Arándanos azules.\nElaboración: Calentar el café instantáneo y la leche condensada en una olla a fuego lento por 5 minutos. Enfriar en la nevera la mezcla durante 30 minutos. Añadir la crema de leche y batir hasta que quede consistencia de mousse. Decorar con café instantáneo o arándanos azules al gusto."
    let rec8: String="Pasta con camarones al ajo.\nIngredientes: 600 g. de camarones, 400 g. de espagueti, 3 dientes de ajo picados, 1 chile picado, 3 cdas. de perejil picado.\nElaboración: Cocer los espaguetis al dente. Rehogar el ajo y el chile junto al perejil. Añadir a la sarten los camarones. Escurrir el espagueti y añadirle la mezcla anterior."
    let rec9: String="Lasaña de patata\nIngredientes: 2 patatas pequeñas, 300 g. de salsa bolognesa, 210 g. de queso rallado, 1 manojo de espinacas.\nElaboración: Cortar las patatas en finas capas y colocarlas en la base de un molde para hornear. Verter 100 gr. de salsa boloñesa y colocar en capas la espinaca y el queso. Repetir proceso en función de cómo queramos el tamaño. Hornear 20 minutos a 200º C."
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
        print("Receta ",j,"\n",recetario[indiceRece[i]])
        j=j+1
      }
      else{
        if indiceRece[i] != indiceRece[i-1]{
          print("Receta ",j,"\n",recetario[indiceRece[i]])
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
func main(){
  //let ejuno=ejercicioUno()
  //ejuno.prepUpper()
  //let ejdos=ejercicioDos()
  //ejdos.resSuma()
  //let ejtres=ejercicioTres()
  //ejtres.validador()
  //let ejcuatro=ejercicioCuatro()
  //ejcuatro.ingredientesPedidos()
  let ejcinco=ejercicioCinco()
  ejcinco.productoInicio()
}
main()