import Tipo_De_Profesional.*
import universidades.*

object juana inherits VinculadoAUniversidad (universidad = uniRosario){
    override method puedeTrabajarEn() = [universidad.provincia()]
    override method honorarios() = universidad.honorariosRecomendados()
}
object melina inherits AsociadoAlLitoral (universidad = uniCorrientes){}
object rocio inherits Libre (universidad = uniHurlingham, puedeTrabajarEn = ["Santa Fe", "Cordoba", "Buenos Aires"], honorarios = 5000){}
object luciana inherits Libre (universidad = uniRosario, puedeTrabajarEn = ["Santa Fe", "Entre Rios"], honorarios = 3200){}