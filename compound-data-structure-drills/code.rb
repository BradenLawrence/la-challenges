people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Domenick",
          "Trycia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nitzsche and Dickinson"
  }
}


puts "Number of people: #{people.size}"
puts ""

puts "List of people's names:"
puts people.keys
puts ""

puts "Alia O'Conner's phone number: #{people["Alia O'Conner PhD"]["phone"]}"
puts ""

puts "Number of children for Brian Heller: \
#{people["Brian Heller"]["children"].size}"
puts ""

puts "Dr. Adela DuBuque's employer: #{people["Dr. Adela DuBuque"]["company"]}"
puts ""

puts "List of people who have children:"
puts people.select {|person, data| !data["children"].nil?}.keys
puts ""

puts "List of people who do not have children:"
puts people.select {|person, data| data["children"].nil?}.keys
puts ""

puts "Brian Heller's child: #{people["Brian Heller"]["children"].join}"
puts ""

puts "Maryse Johns's first child: #{people["Maryse Johns"]["children"].first}"
puts ""

(people["Dr. Adela DuBuque"]["children"] ||= []) << "Tomas"
puts "Dr. Adela's children: #{people["Dr. Adela DuBuque"]["children"].join}"
puts ""

sets_of_people =
[
  {
         "Bernard Feil" => {
             "phone" => "(880) 434-0630",
           "company" => "Maggio Inc",
          "children" => [
              "Nikki"
          ]
      },
          "Ruby Hessel" => {
             "phone" => "1-467-852-4981",
           "company" => "Kemmer Inc",
          "children" => [
              "Sydney"
          ]
      },
          "Savanah Toy" => {
             "phone" => "440-632-0287",
           "company" => "Hudson, Stehr and Lind",
          "children" => [
              "Garth"
          ]
      },
      "Casandra Kemmer" => {
            "phone" => "1-515-759-7470",
          "company" => "Davis, Bernier and Hermann"
      },
             "Edd Rath" => {
            "phone" => "(522) 829-3164",
          "company" => "Mosciski LLC"
      }
  },
  {
         "Dagmar Brakus" => {
             "phone" => "1-881-313-1173",
           "company" => "Mitchell, Schmitt and Haley",
          "children" => [
              "Reuben"
          ]
      },
         "Einar Effertz" => {
            "phone" => "(265) 857-5141",
          "company" => "Pfeffer, Klocko and Von"
      },
      "Dr. Sigrid Nader" => {
             "phone" => "707.762.7870",
           "company" => "Weissnat, Hayes and Dickinson",
          "children" => [
              "Israel",
              "Elyse",
              "Wilfredo"
          ]
      }
  }
]


puts "Number of people in first set: #{sets_of_people.first.size}"
puts ""

puts "Number of people in second set: #{sets_of_people[1].size}"
puts ""

rubysPhoneNum = sets_of_people.find do |set|
  set.include? "Ruby Hessel"
end["Ruby Hessel"]["phone"]
puts "Ruby Hessel's phone number: #{rubysPhoneNum}"
puts ""

sigridsChildren = sets_of_people.find do |set|
  set.include? "Dr. Sigrid Nader"
end["Dr. Sigrid Nader"]["children"]
puts "Dr. Sigrid Nader's children:"
puts sigridsChildren
puts ""

bernardsChild = sets_of_people.find do |set|
  set.include? "Bernard Feil"
end["Bernard Feil"]["children"].join
puts "Bernard Feil's child: #{bernardsChild}"
puts ""

cassandrasCompany = sets_of_people.find do |set|
  set.include? "Casandra Kemmer"
end["Casandra Kemmer"]["company"]
puts "Cassandra Kemmer's employer: #{cassandrasCompany}"
puts ""

mCompanies = sets_of_people.first.collect do |person, data|
  data["company"]
end.select {|company| company.downcase.include? "m"}
puts "First set companies that include 'm':"
puts mCompanies
