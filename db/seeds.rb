puts "Cleaning database..."

UserStep.destroy_all
Step.destroy_all
User.destroy_all

puts "Creating users..."

emmanuel = { first_name: "Emmanuel", last_name: "CLAIRE", email: "c.l.e.972@gmail.com", password: "33845972", photo: "https://res.cloudinary.com/daixhq5r5/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1669751712/development/2zdm4bfojob5mo9oknfny8isnjh2.jpg" }
teacher = { first_name: "Lucie", last_name: "JESOPH", email: "test@test.com", password: "123456", photo: "https://res.cloudinary.com/daixhq5r5/image/upload/v1669946229/development/1669942407282_lxnb8j.jpg" }
random = { first_name: "User", last_name: "NEW", email: "random@test.com", password: "123456", photo: "https://res.cloudinary.com/daixhq5r5/image/upload/v1669917164/development/neblife_c309b25d8c30c03e5caafb00d424395c_cropped_lm1tsz.png" }

[emmanuel, teacher, random].each do |attributes|
  user = User.new(attributes)
  puts "Created #{user.first_name}"
  user.save
end
puts 'users Finished!'

puts "Creating steps..."

professionnels_de_la_petite_enfance = { name: "Professionnels De La Petite Enfance", content: "<p class='p-3'>
  Les professionnels de la petite-enfance peuvent également être les premiers interlocuteurs dans le cadre d’un dépistage précoce et accompagner les parents vers les démarches nécessaires. Ces professionnels peuvent être pédiatre, professionnels de la Protection Maternelle et Infantile (PMI), professionnel d’une structure d’accueil de la petite enfance (crèche, multi-accueil, halte-garderie, périscolaire, enseignants en classe de maternelle…).
</p>
<p class='p-3'>
  Les tests les plus couramment utilisés pour le dépistage de l’autisme dans la petite enfance sont le CHecklist for Autism in Toddlers (CHAT, Baron Cohen et all, 1996) et le Modified CHecklist for Autism in Toddlers (M-CHAT, Robins, Fein, Barton and Green, 2001), la Children Autism Rating Scale (CARS, Eric Schopler, 1971).
</p>
", picture: "https://res.cloudinary.com/daixhq5r5/image/upload/v1669821795/personnel_de_la_petite_enfance_2_drwygu.jpg" }
camps = { name: "CAMPS", content: "<p class='p-3'>
  le CAMPS (Centre Medico Social Précoce) a pour mission le dépistage, le diagnostique, le traitement et la réeducation des jeunes enfants entre 0 et 6ans en situation d'handicap avant leur rentrée a l'école.
</p>
<p class='p-3'>

</p>
<div class='card m-3'>
  <div class='card-header'>
    Informations
  </div>
  <div class='card-body'>
    <h5 class='card-title'>Centre Medico Social Précose</h5>
    <p class='card-text'>1 rue Legrisillière à Trinité 97220, Martinique</p>
    <p class='card-text text-end fw-bold'>+596 596 58 18 39</p>
  </div>
</div>
", picture: "https://res.cloudinary.com/daixhq5r5/image/upload/v1669821197/doc_wxwj7d.png" }
mdph = { name: "MDPH", content: "<p class='p-3'>
  Une MDPH a une mission d'accueil, d'information, d'accompagnement et de conseil des personnes handicapées et de leur famille, ainsi que de sensibilisation des citoyens au handicap.
</p>
<p class='p-3'>
  La MDPH examine les critères liés à la situation de handicap de l'enfant et plus particulièrement à son taux d'incapacité. L'allocation d'éducation de l'enfant handicapé (AEEH) est destinée à compenser les dépenses liées à la situation de handicap de votre enfant de moins de 20 ans?
</p>
<div class='card m-3'>
  <div class='card-header'>
    Informations
  </div>
  <div class='card-body'>
    <h5 class='card-title'>Maison Départementale des Personnes Handicapées</h5>
    <p class='card-text'>1 route, Fort-de-France 97200, Martinique</p>
    <p class='card-text text-end fw-bold'>+596 596 70 09 95</p>
  </div>
</div>
" }
sessad = { name: "SESSAD", content: "<p class='p-3'>
  Le Sessad apporte un soutien spécialisé en développant des actions de soins et de rééducation dans les lieux de vie de l'élève en situation de handicap
</p>
<p class='p-3'>
  Il participe à l'inclusion scolaire et à l'acquisition de l'autonomie grâce à des moyens médicaux, paramédicaux, éducatifs et pédagogiques adaptés.
</p>
<div class='card m-3'>
  <div class='card-header'>
    Informations
  </div>
  <div class='card-body'>
    <h5 class='card-title'>Sessad Alizés Assises</h5>
    <p class='card-text'>141 impasse du Bel Horizon, Habitation Petit Morne, Lamentin Le 97232, Martinique</p>
    <p class='card-text text-end fw-bold'>+596 596 61 78 88</p>
  </div>
</div>
<div class='card m-3'>
  <div class='card-header'>
    Informations
  </div>
  <div class='card-body'>
    <h5 class='card-title'>Sessad Alizés Assises</h5>
    <p class='card-text'>Lotissement les 4 vents Quartier, Pointe Lynch, Le Robert 97231, Martinique</p>
    <p class='card-text text-end fw-bold'>+596 596 69 64 98</p>
  </div>
</div>
", picture: "https://res.cloudinary.com/daixhq5r5/image/upload/v1669916509/development/que-fait-lorthophoniste-avec-un-enfant-non-verbal-vignette-691x389_uoc30t.jpg" }
orthophoniste = {name: "ORTHOPHONISTE ", content: "<p class='p-3'>
  Les orthophonistes font partie intégrante d’une équipe de services en autisme Les problèmes de communication sociale sont caractéristiques du trouble du spectre de l’autisme (TSA), et les orthophonistes sont des professionnels cliniques spécialisés dans tous les aspects de la communication.
</p>
<p class='p-3'>
  L’orthophonie n’a pas pour seul objet de traiter les problèmes de bégaiement et de zézaiement. Le champ d’exercice des orthophonistes englobe tous les aspects de la communication, notamment :Plusieurs enfants atteints d’un TSA ont de la difficulté à maîtriser plusieurs des aspects ci-dessus, ce qui les empêche de communiquer efficacement.
</p>
<p class='p-3'>
  L’objectif premier de l’orthophoniste consiste à rendre votre enfant plus à même d’exprimer ses désirs et ses besoins. Les interventions pour y parvenir prennent différentes formes selon l’enfant, ses besoins et son développement.
</p>
<div class='card m-3'>
  <div class='card-header'>
    Informations
  </div>
  <div class='card-body'>
    <h5 class='card-title'>Cabinet d'orthophonie</h5>
    <p class='card-text'>Chemin de la Brise, La Trinité 97220, Martinique</p>
    <p class='card-text text-end fw-bold'>+596 596 74 30 29</p>
  </div>
</div>
<div class='card m-3'>
  <div class='card-header'>
    Informations
  </div>
  <div class='card-body'>
    <h5 class='card-title'>Clairis-Gauthier Marie-Cécile</h5>
    <p class='card-text'>Rue Leopold Bissol, Lamentin 97232, Martinique</p>
    <p class='card-text text-end fw-bold'>+596 596 51 44 34</p>
  </div>
</div>
", picture: "https://res.cloudinary.com/daixhq5r5/image/upload/v1669813660/orthophoniste_b4gjcs.jpg" }
psychomotricienne = { name: "PSYCHOMOTRICIENNE", content: "<p class='p-3'>
  Les enfants et adultes autistes peuvent présenter des troubles psychomoteurs et sensori-moteurs dès leur plus jeune âge. Ces difficultés nécessitent des interventions rééducatives et réadaptatives. Les plus courantes sont les interventions en psychomotricité rééducative et en ergothérapie.
</p>
<p class='p-3'>
  La thérapie psychomotrice a une visée rééducative très variée dans les troubles de l’autisme. Elle intervient dans différents domaines d’application : motricité fine, coordination, organisation spatio-temporelle, sensorialité, graphisme, communication non verbale, etc. Elle assure ainsi la réadaptation de l’enfant par un apprentissage des capacités psychomotrices, de la perception et de l’autonomie.
</p>
<div class='card m-3'>
  <div class='card-header'>
    Informations
  </div>
  <div class='card-body'>
    <h5 class='card-title'>cabinet de psychomotricité</h5>
    <p class='card-text'>7 Rue Schoelcher, Sainte-Marie 97230, Martinique</p>
    <p class='card-text text-end fw-bold'>+596 696 79 11 89</p>
  </div>
</div>
<div class='card m-3'>
  <div class='card-header'>
    Informations
  </div>
  <div class='card-body'>
    <h5 class='card-title'>Cabinet de psychomotricité Thorel</h5>
    <p class='card-text'>12 Rue Ath Montlouis Félicité, Fort de France 97200, Martinique</p>
    <p class='card-text text-end fw-bold'>+596 596 61 47 08</p>
  </div>
</div>", picture: "https://res.cloudinary.com/daixhq5r5/image/upload/v1669901808/development/capture__2__uafuux.png"}

  [professionnels_de_la_petite_enfance, camps, mdph, sessad, orthophoniste, psychomotricienne].each do |attributes|
    step = Step.create!(attributes)
    puts "Created #{step.name}"
end

ecole = { name: "Inscription maternelle", content: "Inscription a la maternelle École La Volière", user_id: 1 }
medecin = { name: "Dr. Salami", content: "Suivi médical", user_id: 3 }
psycho = { name: "psychologue", content: "Suivi des entretiens", user_id: 3 }

[ecole, medecin, psycho].each do |attributes|
  step = Step.create!(attributes)
  puts "Created #{step.name}"
end

puts 'steps Finished!'

puts "Creating user_steps..."


puts 'user_steps Finished!'
