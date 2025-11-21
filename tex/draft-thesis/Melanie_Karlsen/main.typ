#import "config.typ": manuscript

#show: doc => manuscript(
  title: "Trouver un titre bien",
  author: "Doctorant",
  date: "Date de soutenance",
  directorA: "DT1",
  directorB: "DT2",
  directorC: "DT3",
  university: "PHILOSOPHY (PH. D.) FROM THE UNIVERSITY OF MONTPELLIER",
  researchunit: "Laboratory of Informatics, Robotics, and Microelectronics of Montpellier (LIRMM), France",
  specialisation: "Computer Science",
  doctoral: "Information, Structure, Systems (I2S, ED166) graduate school",
  jury: (
    ("Prof. A", "Professeur", "Université Z", "Rapporteur"),
    ("Prof. B", "Maître de Conférences", "Université W", "Examinateur"),
    ("Prof. C", "Directeur de Recherche", "CNRS", "Président")
  ),
  abstract_fr: [
    Ecrire le résumé en français ici.
  ],
  abstract_en: [
    Write english abstract here.
  ],
  outline_title: "Contents",
  double_page: false,
  acknowledgment_file: "acknowledgment.typ",
  doc
)

#pagebreak()
#include "chapters/1-introduction.typ"
#pagebreak()
#include "chapters/2-theoretical_background.typ"
#pagebreak()
#include "chapters/3-literature_review.typ"
#pagebreak()
#include "chapters/4-framework.typ"
#pagebreak()
#include "chapters/5-comparison.typ"
#pagebreak()
#include "chapters/6-innovation.typ"
#pagebreak()
#include "chapters/7-conclusion-discussion.typ"


#pagebreak()

#include "appendix.typ"

#pagebreak()

#include "legal.typ"