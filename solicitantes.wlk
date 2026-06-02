class Persona{
    const provinciaDondeEsta
    method puedeSerAtendidoPor(unProfesional) = unProfesional.puedeTrabajarEn().contains(provinciaDondeEsta)
}

class Institucion{
    const universidadesReconocidas
    method puedeSerAtendidoPor(unProfesional) = universidadesReconocidas.contains(unProfesional.universidad())
}

class Club{
    const provinciasDondeEsta
    method puedeSerAtendidoPor(unProfesional) = provinciasDondeEsta.any({prov => unProfesional.puedeTrabajarEn().constains(prov)})
}
