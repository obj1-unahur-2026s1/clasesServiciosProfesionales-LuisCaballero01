class VinculadoAUniversidad{
    const property universidad
    method puedeTrabajarEn() = universidad.provincia()
    method honorarios() = universidad.honorariosRecomendados()
    method cobrar(unMonto){
        universidad.recibirDonacion(unMonto/2)
    }
}
class AsociadoAlLitoral{
    const property universidad
    method puedeTrabajarEn() = ["entreRios", "santaFe", "corrientes"]
    method honorarios() = 3000
    method cobrar(unMonto){
        asociacionLitoral.recibirDonacion(unMonto)
    }
}
class Libre{
    var monto = 0
    const property universidad
    const property puedeTrabajarEn
    const property honorarios

    method cobrar(unMonto){
        monto += unMonto
    }
    method pasarPlata(unProfesional, unMonto){
        if (unMonto >= monto){
            unProfesional.recibirPlata(unMonto)
            monto -= unMonto
        }
    }
    method recibirPlata(unMonto){
        monto += unMonto
    }
}

object asociacionLitoral{
    var monto = 0
    method recibirDonacion(unMonto){
        monto += unMonto
    }
}
