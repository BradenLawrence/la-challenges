crew_contacts = {
  jose: 'workerNaut@example.com',
  samantha: 'spaceFlightRacer@example.com',
  talia: 'pro_space89@example.com',
  mike: 'alwaysAtTheHelm@example.com',
  olivia: 'maintainingMaintenance@example.com',
  joan: 'bestNavigatorEver@example.com'
}

puts [
  crew_contacts[:samantha],
  crew_contacts[:talia],
  crew_contacts[:olivia]
].join(", ")
