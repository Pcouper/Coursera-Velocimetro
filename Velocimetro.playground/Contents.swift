//: Velocímetro
// By Francisco Sáez

import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
    self = velocidadInicial
    }
}

class Auto{
    
    var velocidad: Velocidades
    init ( ){
    velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String){
        
        var texto = ""
        let actual = velocidad.rawValue
        
        switch velocidad {
        
        case .Apagado:
            velocidad = .VelocidadBaja
            texto = "Apagado"
        
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            texto = "Velocidad Baja"
        
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            texto = "Velocidad Media"
        
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            texto = "Velocidad Alta"
            
        }
        
        return (actual, texto)
        
    }

}

let auto = Auto()

for i in 1...20 {
    let result = auto.cambioDeVelocidad()
    print ("\(i). \(result.actual), \(result.velocidadEnCadena)")
}
