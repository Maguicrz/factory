protocol Taco {
  func haceTaco()
}
class TacoPastor: Taco {
  var precioPastor: Int = 12
  func haceTaco() {
    print("Pidio al pastor")
  }
}
class TacoCarnitas: Taco {
  var precioCarnitas: Int = 15
  func haceTaco() {
    print("Pidio de carnitas")    
   }
}
class TacoSuadero: Taco {
  var precioSuadero: Int = 12
  func haceTaco() {
    print("Pidio de suadero")
  }
}
class TacoCecina: Taco {
  var precioCecina: Int = 12
  func haceTaco() {
    print("Pidio de cecina")    
  }
}
 
protocol Ingredientes {
  func haceTaco()
}
class Limon: Ingredientes {
  var precioLimon: Int = 3
  func haceTaco() {
    print("con limon/es")
  }
}
class Salsa: Ingredientes {
  var precioSalsa: Int = 10
  func haceTaco() {
    print("con salsa")
  }
}
class Cebolla: Ingredientes {
  var precioCebolla: Int = 2
  func haceTaco() { 
    print("con cebolla")
  }
}
class Cilantro: Ingredientes {
  var precioCilantro: Int = 2
  func haceTaco() {
    print("con cilantro")
  }
}

class Cuenta{
  
  var precioLimon = Limon()
  var precioCebolla = Cebolla()
  var precioCilantro = Cilantro()
  var precioSalsa = Salsa()
  var precioCarnitas = TacoCarnitas()
  var precioSuadero = TacoSuadero()
  var precioPastor = TacoPastor()
  var precioCecina = TacoCecina()

  func cuentaPastor(_ cuantosPa: Int) -> Int{
    let cuantosPa = precioPastor.precioPastor*cuantosPa
    print("Precio total tacos de pastor: $\(cuantosPa)")

    return cuantosPa
  }

  func cuentaCarnitas(_ cuantosCa: Int) -> Int {
    let cuantosCa = precioCarnitas.precioCarnitas*cuantosCa
    print("Precio total tacos de carnitas: $\(cuantosCa)")

    return cuantosCa
  }

  func cuentaSuadero(_ cuantosSu: Int) -> Int{
    let cuantosSu = precioSuadero.precioSuadero*cuantosSu
    print("Precio total tacos de suadero: $\(cuantosSu)")

    return cuantosSu
  }

  func cuentaCecina(_ cuantosCe: Int) -> Int{
    let cuantosCe = precioCecina.precioCecina*cuantosCe
    print("Precio total tacos de cecina: $\(cuantosCe)")

    return cuantosCe
  }

  func cuentaLimon(_ cuantosLi: Int) -> Int{
    let cuantosLi = precioLimon.precioLimon*cuantosLi
    print("Total Limon: $\(cuantosLi)")

    return cuantosLi
  }

  func cuentaCebolla(_ cuantosCeb: Int) -> Int{
    let cuantosCeb = precioCebolla.precioCebolla*cuantosCeb
    print("Total cebolla: $\(cuantosCeb)")

    return cuantosCeb
  }

  func cuentaCilantro(_ cuantosCi: Int) -> Int{
    let cuantosCi = precioCilantro.precioCilantro*cuantosCi
    print("Total cilantro: $\(cuantosCi)")

    return cuantosCi
  }

  func cuentaSalsa(_ cuantosSa: Int) -> Int{
    let cuantosSa = precioSalsa.precioSalsa*cuantosSa
    print("Total salsa: $\(cuantosSa)")

    return cuantosSa
  }

 
}


protocol Factory {
  func produceTaco() -> Taco
  func produceIngredientes() -> Ingredientes
  
}
class FactoryA: Factory {
  
  func produceTaco() -> Taco{

    return TacoPastor()
  }
  func produceIngredientes() -> Ingredientes {
   
    return Limon()
  }
}
class FactoryB: Factory {

    func produceTaco() -> Taco {
      return TacoSuadero()
    }
    func produceTaco2() -> Taco {

      return TacoCecina()
    }
    func produceTaco3() -> Taco {

      return TacoPastor()
    }

    func produceIngredientes() -> Ingredientes {
    
      return Cebolla()
    }
    func produceIngredientes2() -> Ingredientes {
     
      return Limon()
    }
}

class FactoryC: Factory {

    func produceTaco() -> Taco {
      return TacoCarnitas()
    }

    func produceIngredientes() -> Ingredientes {
    
      return Cebolla()
    }
    func produceIngredientes2() -> Ingredientes {
     
      return Limon()
    }

    func produceIngredientes3() -> Ingredientes {
    
      return Cilantro()
    }

    func produceIngredientes4() -> Ingredientes {
    
      return Salsa()
    }
}

let cuenta = Cuenta()

print("-------------Cuenta A------------------\n")
let factoryA = FactoryA()
let pastorA = factoryA.produceTaco()
let limonesA = factoryA.produceIngredientes()

pastorA.haceTaco()
limonesA.haceTaco()

let totalCuentaA = cuenta.cuentaPastor(2) + cuenta.cuentaLimon(4)
print("\nTotal a pagar: $\(totalCuentaA)")

print("-------------------------------\n")

print("---------------Cuenta B----------------\n")
let factoryB = FactoryB()
let suaderoB = factoryB.produceTaco()
let cecinaB = factoryB.produceTaco2()
let pastorB = factoryB.produceTaco3()
let cebollaB = factoryB.produceIngredientes()
let limonesB = factoryB.produceIngredientes2()

suaderoB.haceTaco()
pastorB.haceTaco()
cecinaB.haceTaco()
cebollaB.haceTaco()
limonesB.haceTaco()

let totalCuentaB = cuenta.cuentaCecina(2) + cuenta.cuentaSuadero(1) + cuenta.cuentaPastor(1) + cuenta.cuentaCebolla(4) + cuenta.cuentaLimon(6)
print("\nTotal a pagar: $\(totalCuentaB)")
print("-------------------------------\n")

print("---------------Cuenta C----------------\n")
let factoryC = FactoryC()
let carnitasC = factoryC.produceTaco()
let cebollaC = factoryC.produceIngredientes()
let limonesC = factoryC.produceIngredientes2()
let cilantroC = factoryC.produceIngredientes3()
let salsaC = factoryC.produceIngredientes4()

carnitasC.haceTaco()
cebollaC.haceTaco()
limonesC.haceTaco()
cilantroC.haceTaco()
salsaC.haceTaco()

let totalCuentaC = cuenta.cuentaCarnitas(6) + cuenta.cuentaCebolla(6) + cuenta.cuentaLimon(8) + cuenta.cuentaCilantro(6) + cuenta.cuentaSalsa(1)
print("\nTotal a pagar: $\(totalCuentaC)")
print("-------------------------------\n")