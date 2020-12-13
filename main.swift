//Creado por Aquino Santiago Rogelio Gerardo
//Para la clase de Computo movil
//Fecha: 13/12/2020
import Glibc

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

  func validaNum()->Bool{
    var i=0
    while i<14{
      if i != 4&&i != 9&&i != 0&&i != 3{
        switch self.numArray[i]{
          case "0"..."9":
          break
          default:
          print("Error, no es un numero valido")
          return false
        }
      }
      i=i+1
    }
    return true
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
    return validaNum()
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
  
}
func main(){
  //let ejuno=ejercicioUno()
  //ejuno.prepUpper()
  //let ejdos=ejercicioDos()
  //ejdos.resSuma()
  let ejtres=ejercicioTres()
  ejtres.validador()
}
main()