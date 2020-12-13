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
    self.res=self.res*2
    return(upperNum(n:n-1))
  }
  func prepUpper(){
    print("Ingrese numero entero para realizar la operacion 2^n        \nN=")
    let n=readLine()!
    self.n=Int(n)!
    upperNum(n:self.n)
    print("Resultado de 2^n=",self.res)
    return
  }

}
//func suma()->Int
func main(){
  let ejuno=ejercicioUno()
  ejuno.prepUpper()
}
//let n=pow(Double(2),Double(3))
//print(n)
main()