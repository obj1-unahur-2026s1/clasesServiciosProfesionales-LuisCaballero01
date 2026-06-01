// de cada solicitante se pide saber si puede ser atendido por un profesional
// pueden ser PERSONAS, INSTITUCIONES o CLUBES
// Persona: provincia donde vive, puede ser atendido por profesionales que puedan trabajar en las provincia donde vive.
// Institucion: lista de unis que reconoce. Puede ser atendido por profesionales que estudiaron en una de esas unis.
// clubes: estan en varias provincias. Puede ser atendido si almenos 1 trabajador puede trabajar en al menos 1 provincia en la que esté presente.


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






