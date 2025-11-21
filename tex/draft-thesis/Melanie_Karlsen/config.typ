#import "frontpage_en.typ": frontpage
#import "@preview/ctheorems:1.1.3": thmplain, thmrules
#import "@preview/i-figured:0.2.4"

// Used in header of manuscript. Not checked elsewhere...
#let to_string(my_str) = {
  if my_str == str {
    my_str
  } else if type(my_str) != content {
      str(my_str)
  } else if my_str.has("text") {
    my_str.text
  } else if my_str.has("children") {
    my_str.children
      .filter(it => it != linebreak())
      .map(my_str => to_string(my_str))
      .filter(it => it != " ").join(" ")
  } else if my_str.has("body") {
    to-string(my_str.body)
  } else if my_str == [ ] {
    " "
  }
}

// Fonction principale pour configurer le document
#let manuscript(
  title: "Titre du document",
  author: "Auteur",
  date: none,
  directorA: none,
  directorB: none,
  directorC: none,
  university: none,
  researchunit: none,
  specialisation: none,
  doctoral: none,
  jury: (),
  abstract_fr: "Résumé en français",
  abstract_en: "Abstract in English",
  outline_title: "Contents",
  double_page: true,
  bibliography_file: "bibliography/refs.bib",
  acknowledgment_file: "acknowledgment.typ",
  body
) = {
  
  // Définition des paramètres de page
  set page(
    paper: "a4",
    margin: (x: 2.5cm, y: 2.5cm),
    numbering: none
  )

  // Configuration du texte
  set text(
    font: "New Computer Modern",
    size: 11pt,
    lang: "fr"
  )
  
  // Paragraphe
  set par(
    justify: true,
    leading: 0.65em,
    // first-line-indent: (amount: 2em, all: true)
    first-line-indent: 1em
  )

  // Configuration de la numérotation des sections/chapitres
  set heading(
    numbering: "1.1.1",
  )

  show figure: i-figured.show-figure

  set figure.caption(separator: [ -- ])
  
  show figure.caption: c => context [
    #align(left)[#text(weight: "bold")[
        #c.supplement #c.counter.display(c.numbering)
      ]
      #c.separator #emph(c.body)
    ]
  ]

  // Page de titre
  frontpage(
    title: title,
    author: author,
    date: date,
    directorA: directorA,
    directorB: directorB,
    directorC: directorC,
    university: university,
    researchunit: researchunit,
    specialisation: specialisation,
    doctoral: doctoral,
    jury: jury
  )
  
  // Page blanche après la page de titre

  set page(
    background: none,
    margin: (inside: 2.75cm, outside: 1.75cm, top: 2cm, bottom: 2.5cm)
  ) // Supprime tout arrière-plan

  pagebreak()
  
  // Numérotation des chapitres pour les abstracts
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    align(center)[
      #block(
        fill: none,
        inset: (y: 0.65em),
        text(17pt, weight: "bold", it.body)
      )
    ]
  }

  // Résumé en français
  heading(level: 1, numbering: none, outlined: false, [Résumé])
  set text(lang: "fr") // font: "sans"
  abstract_fr
  
  // Page de résumé en anglais
  pagebreak()
  heading(level: 1, numbering: none, outlined: false, [Abstract])
  set text(lang: "en") // font: "sans"
  abstract_en

  pagebreak()
  heading(level: 1, numbering: none, outlined: false, [Acknowledgment])
  include acknowledgment_file

  // Page de sommaire
  pagebreak()
  pagebreak()

set math.equation(numbering: (..nums) => 
  "(" 
  + counter(heading.where(level: 1)).display() 
  + "."                                  // <-- add this
  + nums.pos().map(str).join(".") 
  + ")"
)

set figure(numbering: (..nums) => 
  counter(heading.where(level: 1)).display() 
  + "."                                  // <-- add this
  + nums.pos().map(str).join(".")
)

show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    link(
      el.location(),
      numbering(
        el.numbering,
        ..counter(eq).at(el.location())
      )
    )
  } else {
    // Other references as usual.
    it
  }
}


  let chapter_font_weight = 700
  let chapter_font_size = 28pt
  let chapter_font = "Arial" // "Helvetica"

  // Gestion des chapitres pour le sommaire
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    block(width: 100%)[
      #line(length: 100%, stroke: 0.4pt)
      #v(6pt, weak: false)
      #align(center)[
        #text(chapter_font_size, weight: chapter_font_weight, font: chapter_font, it.body)
      ]
      #line(length: 100%, stroke: 0.4pt)
      #v(40pt, weak: false)
    ]
  }

  // definition d'une entree dans outline
  // Objectif est de retirer les retours a la ligne
  show outline.entry: it => {
    let body = if it.body().has("children") {
      it.body().children.filter(it => {it != linebreak()}).join()
    } else {
      it.body()
    } 
    link(
      it.element.location(),
      it.indented(
        it.prefix(),
        body + sym.space + box(width: 1fr, it.fill) + sym.space + sym.wj + it.page()
      )
    )
  }

  // Ajout d'un espace avant les chapitres dans la table des matières
  show outline.entry.where(level: 1): it => {
    v(18pt, weak: true)
    strong(it)
  }
  // Table des matières
  outline(
    title: outline_title,
    indent: auto,
    depth: 3,
  )

  outline(
    title: [List of Figures],
    target: figure.where(kind: image),
  )
  
  outline(
    title: [List of Tables],
    target: figure.where(kind: table),
  )

  show figure.caption: it => [#it #v(0.3em)]
  counter(page).update(0)
  set page(numbering: "1")
  
  // Configuration pour les pages après le sommaire
  pagebreak()  

  // format du heading chapitre apres le sommaire
  show heading.where(level: 1): it => {
    counter(figure).update(0)
    pagebreak(weak: true)
    block(width: 100%)[
      #align(right)[
        #text(18pt, weight: 500, font: chapter_font, smallcaps("Chapter " + str(counter(heading).at(it.location()).first())))
      ]
      #line(length: 100%, stroke: 0.4pt)
      #v(6pt, weak: false)
      #align(center)[
        #text(chapter_font_size, weight: chapter_font_weight, font: chapter_font, smallcaps(it.body))
      ]
      #line(length: 100%, stroke: 0.4pt)
      #v(40pt, weak: false)
    ]
  }
  
  // So that each figure has a number within the chapter
  show heading: i-figured.reset-counters

  set ref(supplement: none)

  let manuscript_header() = context {
    let current-page = here().page()
    
    let first_page_with_header = locate(<chap:intro>).position().page
    
    let show-header = current-page >= first_page_with_header
    let chapters_after = query(selector(heading.where(level: 1)).after(here()))
    if chapters_after.len() == 0 or chapters_after.first().location().page() == current-page {
      show-header = false
    }

    if show-header {
      // Last chapter before here is current chapter since we don't count first page
      let chapters-before-selector = selector(heading.where(level: 1)).before(here())
      let chapters-before = query(chapters-before-selector)

      let current-chapter-name = to_string(chapters-before.last().body)
      
      let even = calc.even(current-page)
      if even {
        [
          // par is used to remove the indent
          // I added to first lines of first paragraph
          // The header hence had itself an indent for left align
          #par(first-line-indent: (amount: 0em, all: false))[
            #align(left)[
              #current-chapter-name
            ]
          ]
          #v(-0.5em)
          #line(length: 100%, stroke: 0.4pt)
        ]
      } else {
        let last = query(selector(heading.where(level: 2).before(here()).after(chapters-before-selector)))
        let first = query(selector(heading.where(level: 2).after(here())))

        let section-name = if first.len() > 0 and first.first().location().page() == current-page {
          first.first().body
        } else if last.len() > 0 {
          last.last().body
        } else {
          current-chapter-name
        }
        
        [
          #align(right)[
            #section-name
          ]
          #v(-0.5em)
          #line(length: 100%, stroke: 0.4pt)
        ]
      }
    }else{
      none
    }
  }

  set page(
    header: manuscript_header(),
  )

  show: thmrules

  // Contenu principal du document
  body
  // set heading(bookmarked: false, numbering: none)
  bibliography(bibliography_file, style: "ieee")
}

// Fonction qui génère un petit sommaire pour un chapitre
#let chapter_outline() = context [
  #let all_levels_in_chapter = heading.where().after(here()).before(heading.where(level: 1).after(here(), inclusive: false), inclusive: false)
  #block(width: 100%)[
    #par(first-line-indent: 0em)[
      #text(14pt, weight: 700, "Contents")
    ]
    #v(-0.7em)
    #line(length: 100%, stroke: 0.4pt)
    #block(inset: (right: 2em))[
      #outline(target: all_levels_in_chapter, title: none)
    ]
    #line(length: 100%, stroke: 0.4pt)
  ]
]

#let custom-link(url, name) = {
    text(fill: blue)[
      #underline(
        link(url)[#name]
      )]
  }

#let definition = thmplain(
  "definition",
  "Définition",
  supplement: none,
  inset: (x: 1.2em, top: 1em, bottom: 1em),
  fill: rgb("#eeffee"),
  titlefmt: strong,
  //numbering: numbering("1.1"),
  base_level: 1
).with(numbering: "1.1", base_level: 1)

#let proposition = thmplain(
  "proposition",
  "Proposition", 
  inset: (x: 1.2em, top: 1em, bottom: 1em),
  fill: rgb("#fffeee"), 
  titlefmt: strong
).with(numbering: "1.1", base_level: 1)


#let argmin(quantity) = [$op("argmin", limits: #true)_(quantity)$]
#let argmax(quantity) = [$op("argmax", limits: #true)_(quantity)$]

#let grave(x) = x + "\u{300}"


#let citep(..citation) = {
  for c in "citation" {
    [#c #c]
  }
  cite(..citation, brackets: true)
}

#let citet(..citation) = {
  show regex(" \d{4}"): v => {
    show " ": vv => []
    [ (#v)]
  }
  cite(..citation, brackets:false)
}
