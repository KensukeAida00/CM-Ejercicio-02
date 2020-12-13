//Creado por Aquino Santiago Rogelio Gerardo
//Para la clase de Computo movil
//Fecha: 13/12/2020
import Glibc
func upperNum(upper:Int, res:Int)->Int{
  if upper<=1{
    if upper==0{
      return 1
    }
    return res
  }
  return(upperNum(upper:upper-1,res:res*2))
}
func prepUpper()->Int{
  print("Ingrese numero entero para realizar la operacion 2^n        \nN=")
  let n=readLine()!
  return(upperNum(upper:Int(n)!,res:2))
}
//func suma()->Int
func main(){
  let resUpper=prepUpper()
  print("Resultado de a 2^n=",resUpper)
}
let n=pow(Double(2),Double(3))
print(n)
//main()