/*
Cada profesional tiene:
    universidad donde estudia -> asignado a cada profesional.
    honorarios -> 'cómo' depende del tipo
    provincia donde puede trabajar -> 'cómo' depende del tipo

*/

/*
Cada universidad tiene:
    provincia donde se encuentra
    honorarios que RECOMIENDA
*/

class VinculadoAUniversidad{
    const property universidad
    method puedeTrabajarEn()
    method honorarios()
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
