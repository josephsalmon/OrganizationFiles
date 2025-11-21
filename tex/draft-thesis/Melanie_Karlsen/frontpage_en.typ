#let rouge_fonce = rgb(233, 79, 82)
#let gris_cover = rgb(135, 140, 161)

#let frontpage(
  title: "Document title",
  author: "First name LAST NAME",
  date: "dd month yyyy",
  directorA: "<Director>",
  directorB: none,
  directorC: none,
  manuscript_type: "THESIS SUBMITTED FOR THE DEGREE OF DOCTOR OF",
  university: "<Université>",
  researchunit: "<Research unit>",
  specialisation: "<Spécialité>",
  doctoral: "<Doctoral school>",
  univlogo: "/cover/frontpage_um.png",
  univwallpaper: "/cover/wallpaper.png",
  jury: ()
) = {
  // Configuration de la page
  set page(
    margin: (left: 1.5cm, right: 1.5cm, top: 0.5cm, bottom: 2cm),
    background: image(univwallpaper, width: 100%),
  )
  
  // Utilisation de la police sans-serif pour toute la page
  set text(lang: "en", weight: "bold", font: "Arial", style:"normal", stretch: 75%) // font: "sans"
  
  // En-tête avec titre HDR
  align(center, {
    // set text(weight: "bold", font: "Arial", style:"normal", stretch: 75%)//"Helvetica")
    let upper_univ = upper(university);
    v(5em)
    text(
      fill: rouge_fonce,
      size: 18pt,
      [
        #upper({manuscript_type}) \
        #upper_univ
      ]
    )
    
    v(1em)
    align(
      center, 
      text(size: 12pt)[
        In #specialisation
        #v(8pt)
        #doctoral
        #v(8pt)
        #researchunit
      ]
      // block()[
      //   In #specialisation
      //   #v(10pt)
      //   #doctoral
      //   #v(10pt)
      //   #researchunit
      // ]
    )
    
    v(2em)
    
    // Titre du document
    text(gris_cover, weight: 600,size: 17pt)[#title]
    
    v(5em)
    
    // Auteur et date
    text(size: 15pt)[
      Presented by #author \
      on #date
    ]
    
    v(1.25em)
    
    text(size: 13pt)[
      Under the supervision of #directorA,\ 
      #directorB and #directorC
    ]
    
    
    v(1.25em)
    
     text(size: 12pt)[In front of a jury composed of]
    
    // Table du jury
    if jury.len() > 0 {
      align(center, {
        set text(size: 10pt)
        table(
          columns: (auto, auto),
          stroke: none,
          ..jury.map(member => {
            if member.len() >= 4 {
              (
                [#member.at(0), #member.at(1), #member.at(2)], 
                [#member.at(3)]
              )
            } else {
              ([], [])
            }
          }).flatten()
        )
      })
    }
    
    v(2fr)
    
    // Logo université
    image(univlogo, height: 2.2cm)
    
  })
  
  pagebreak()
}