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
    self.n=1
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
    print("Ingrese numero entero para realizar la operacion 2^n",
          "\nN=")
    let n=readLine()!
    self.n=Int(n)!
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
func main(){
  let ejuno=ejercicioUno()
  ejuno.prepUpper()
  let ejdos=ejercicioDos()
  ejdos.resSuma()
}
//let n=pow(Double(2),Double(-3))
//print(n)
main()