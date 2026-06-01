import profesionales.*
class Empresa{
    const profesionales = []
    
    const property honorarioPreferencia

    method cuantosEstudiaronEn(unaUni) = profesionales.count({p => p.universidad() == unaUni})
    method profesionalesCaros() = profesionales.filter({p => p.honorarios() > self.honorarioPreferencia()}).withoutDuplicates()
    method universidadesFormadoras() = profesionales.map({p => p.universidad()}).withoutDuplicates()
    method profesionalMasBarato() = profesionales.min({p => p.honorarios()})
    method esDeGenteAcotada() = profesionales.all({p => p.puedeTrabajarEn().size() <= 3})
    method puedeSatisfacerA(unSolicitante) = profesionales.any({p => unSolicitante.puedeSerAtendidoPor(p)})

    method contratar(unProfesional){
        profesionales.add(unProfesional)
    }
    method contratarProfesionales(listaDeProfesionales){
        listaDeProfesionales.forEach({p => self.contratar(p)})
    }
}
object laSerenisima inherits Empresa(honorarioPreferencia = 3500){} 