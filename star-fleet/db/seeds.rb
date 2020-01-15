ship_seeds = [
  {name: 'USS Enterprise', ship_class: 'Galaxy', location: "Romulan Star Empire"},
  {name: 'Serenity', ship_class: 'Firefly', location: "Miranda"},
  {name: 'Heart of Gold', ship_class: 'Probability Drive', location: 'Everywhere at once'}
]

Ship.destroy_all
ship_seeds.each do |ship_data|
  Ship.create(ship_data)
end

enterprise = Ship.find_by(name: 'USS Enterprise')
serenity = Ship.find_by(name: 'Serenity')
heart_of_gold = Ship.find_by(name: 'Heart of Gold')

crew_seeds = [
  {
    first_name: 'Jean-luc',
    last_name: 'Picard', division: 'Captain',
    ship_id: enterprise.id},
  {
    first_name: 'William',
    last_name: 'Riker', division: 'First Officer',
    ship_id: enterprise.id},
  {
    first_name: 'Geordi',
    last_name: 'La Forge',
    division: 'Helmsman',
    ship_id: enterprise.id
  },

  {
    first_name: 'Malcom',
    last_name: 'Reynolds',
    division: 'Captain',
    ship_id: serenity.id
  },
  {
    first_name: 'Zoe',
    last_name: 'Washburn',
    division: 'First Mate',
    ship_id: serenity.id
  },
  {
    first_name: 'Hoban',
    last_name: 'Washburn',
    division: 'Pilot',
    ship_id: serenity.id
  },

  {
    first_name: 'Zaphod',
    last_name: 'Beeblebrox',
    division: 'President',
    ship_id: heart_of_gold.id
  },
  {
    first_name: 'Arthur',
    last_name: 'Dent',
    division: 'Hitchhiker',
    ship_id: heart_of_gold.id
  },
  {
    first_name: 'Tricia',
    last_name: 'McMillan',
    division: 'Hitchhiker',
    ship_id: heart_of_gold.id
  }
]

CrewMember.destroy_all
crew_seeds.each do |crew_data|
  CrewMember.create(crew_data)
end
