puts "Cleaning database..."
Step.destroy_all

puts "Creating steps..."

professionnels_ de_la_petite_enfance = {name : "Professionnels De La Petite E
nfance", content : "Les professionnels de la petite-enfance peuvent également être les premiers interlocuteurs dans le cadre d’un dépistage précoce et accompagner les parents vers les démarches nécessaires.
Ces professionnels peuvent être pédiatre, professionnels de la Protection Maternelle et Infantile (PMI), professionnel d’une structure d’accueil de la petite enfance (crèche, multi-accueil, halte-garderie, périscolaire, enseignants en classe de maternelle…).
 Les tests les plus couramment utilisés pour le dépistage de l’autisme dans la petite enfance sont le CHecklist for Autism in Toddlers (CHAT, Baron Cohen et all, 1996) et le Modified CHecklist for Autism in Toddlers (M-CHAT, Robins, Fein, Barton and Green, 2001), la Children Autism Rating Scale (CARS, Eric Schopler, 1971)."}
camps = {name : "CAMPS", content : "le CAMPS(Centre Medico Social Précose) a pour mission le dépistage, le diagnostique, le traitement et la réeducation des jeunes enfants entre 0 et 6ans en situation d'handicap avant leur rentrée a l'école.
 ils sont situés 1 rue Legrisillière à Trinité , Tel 0596.58.18.39 et au Lamentin au CHU Mangot Vulcin route du Vert Pré , Tel 0596.59.29.82. les documents à appotér : le caarnet de santé , l'assestation de sécurité social".}
mdph = {name : "MDPH", content : "Une MDPH a une mission d'accueil, d'information, d'accompagnement et de conseil des personnes handicapées et de leur famille, ainsi que de sensibilisation des citoyens au handicap.
La MDPH examine les critères liés à la situation de handicap de l'enfant et plus particulièrement à son taux d'incapacité. L'allocation d'éducation de l'enfant handicapé (AEEH) est destinée à compenser les dépenses liées à la situation de handicap de votre enfant de moins de 20 ans?"}
sessad = {name : "SESSAD", content : "Le Sessad apporte un soutien spécialisé en développant des actions de soins et de rééducation dans les lieux de vie de l'élève en situation de handicap.
 Il participe à l'inclusion scolaire et à l'acquisition de l'autonomie grâce à des moyens médicaux, paramédicaux, éducatifs et pédagogiques adaptés."}
orthophoniste = {name : "ORTHOPHONISTE ", content : "Les orthophonistes font partie intégrante d’une équipe de services en autisme
Les problèmes de communication sociale sont caractéristiques du trouble du spectre de l’autisme (TSA), et les orthophonistes sont des professionnels cliniques spécialisés dans tous les aspects de la communication.  L’orthophonie n’a pas pour seul objet de traiter les problèmes de bégaiement et de zézaiement.
 Le champ d’exercice des orthophonistes englobe tous les aspects de la communication, notamment :Plusieurs enfants atteints d’un TSA ont de la difficulté à maîtriser plusieurs des aspects ci-dessus, ce qui les empêche de communiquer efficacement. L’objectif premier de l’orthophoniste consiste à rendre votre enfant plus à même d’exprimer ses désirs et ses besoins.
 Les interventions pour y parvenir prennent différentes formes selon l’enfant, ses besoins et son développement."}
psychomotricienne = {name : "PSYCHOMOTRIENNE", content : "Les enfants et adultes autistes peuvent présenter des troubles psychomoteurs et sensori-moteurs dès leur plus jeune âge. Ces difficultés nécessitent des interventions rééducatives et réadaptatives. Les plus courantes sont les interventions en psychomotricité rééducative et en ergothérapie.
 La thérapie psychomotrice a une visée rééducative très variée dans les troubles de l’autisme. Elle intervient dans différents domaines d’application : motricité fine, coordination, organisation spatio-temporelle, sensorialité, graphisme, communication non verbale, etc.
  Elle assure ainsi la réadaptation de l’enfant par un apprentissage des capacités psychomotrices, de la perception et de l’autonomie."}

  [professionnels_ de_la_petite_enfance, camps, mdph, sessad, orthophoniste, psychomotricienne].each do |attributes|
    step = Step.create!(attributes)
    puts "Created #{step.name}"
end
puts 'steps Finished!'
