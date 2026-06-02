import universidades.*
class Empresa{
    const profesionales = []
    const clientes = []
    const property honorarioPreferencia

    method cuantosEstudiaronEn(unaUni) = profesionales.count({p => p.universidad() == unaUni}) //testeado
    method profesionalesCaros() = profesionales.filter({p => p.honorarios() > self.honorarioPreferencia()}) //testeado
    method universidadesFormadoras() = profesionales.map({p => p.universidad()}).asSet() //testeado
    method profesionalMasBarato() = profesionales.min({p => p.honorarios()}) // testeado
    method esDeGenteAcotada() = profesionales.all({p => p.puedeTrabajarEn().size() <= 3}) //testeado
    method puedeSatisfacerA(unSolicitante) = profesionales.any({p => unSolicitante.puedeSerAtendidoPor(p)})
    method algunoQuePuedeSatisfacerA(unSolicitante) = profesionales.filter({p => unSolicitante.puedeSerAtendidoPor(p)}).anyOne()
    method cantidadClientes() = clientes.size()
    method esCliente(unSolicitante) = clientes.contains(unSolicitante)
    
    method contratar(unProfesional){
        profesionales.add(unProfesional)
    }
    
    method contratarProfesionales(listaDeProfesionales){
        listaDeProfesionales.forEach({p => self.contratar(p)})
    }
    
    method agregarCliente(unSolicitante){
        if (!clientes.contains(unSolicitante))
            clientes.add(unSolicitante)
    }

    method darServicio(unSolicitante){
        if (self.puedeSatisfacerA(unSolicitante)){
            self.algunoQuePuedeSatisfacerA(unSolicitante).cobrar(7777)
            self.agregarCliente(unSolicitante)
        }
    }
}

const laSerenisima = new Empresa(honorarioPreferencia = 3500)