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
}
class AsociadoAlLitoral{
    const property universidad
    method puedeTrabajarEn() = ["entreRios", "santaFe", "corrientes"]
    method honorarios() = 3000
}
class Libre{
    const property universidad
    const property puedeTrabajarEn
    const property honorarios
}


