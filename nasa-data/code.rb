require 'pry'
nasa_data = [
  "Direct Marketing News" => {
    "computed_region_cbhk_fwbd" => 46,
    "computed_region_nnqa_25f4" => 2095,
    "country" => "USA",
    "domain" => "com",
    "email_hosts" => "dmnews.com",
    "location_1" =>
      {
        "type" => "Point",
        "coordinates" => [ -74.005941, 40.712784 ]
      },
    "location_1_city" => "New York",
    "location_1_state" => "NY",
    "position" => "Special Features Editor"
  },
  "Amoeba Culture" => {
    "computed_region_cbhk_fwbd" => 32,
    "computed_region_nnqa_25f4" => 9005,
    "country" => "SOUTH KOREA",
    "domain" => nil,
    "email_hosts" => "me.com",
    "location_1" =>
      {
        "type" => "Dot",
        "coordinates" => [ 126.977969, 37.566535 ]
      },
    "location_1_city" => "Seoul",
    "position" => "Music Producer"
  },
  "Intrepid Solutions" => {
    "computed_region_cbhk_fwbd" => 23,
    "computed_region_nnqa_25f4" => 2924,
    "country" => "USA",
    "domain" => "com",
    "email_hosts" => "gmail.com",
    "location_1" =>
      {
        "type" => "Point",
        "coordinates" => [ -97.743061, 30.267153 ]
      },
    "location_1_city" => "Austin",
    "location_1_state" => "TX",
    "position" => "Owner"
  },
  "The Van Blargan Groups" => {
    "computed_region_cbhk_fwbd" => 23,
    "computed_region_nnqa_25f4" => 3162,
    "country" => "USA",
    "domain" => nil,
    "email_hosts" => "gmail.com",
    "location_1" =>
      {
        "type" => "Point",
        "coordinates" => [ -96.796988, 32.776664 ]
      },
    "location_1_city" => "Dallas",
    "location_1_state" => "TX",
    "position" => "Consultant"
  },
  "Telewander" => {
    "computed_region_cbhk_fwbd" => 17,
    "computed_region_nnqa_25f4" => 3867,
    "country" => "CHILE",
    "domain" => "com",
    "email_hosts" => "telewander.com",
    "location_1" =>
      {
        "type" => "Dot",
        "coordinates" => [ -70.669265, -33.44889 ]
      },
    "location_1_city" => "Santiago de Chile",
    "position" => "Jose Manuel Lizama Gonzalez"
  },
  "Folk" => {
    "computed_region_cbhk_fwbd" => 68,
    "computed_region_nnqa_25f4" => 8243,
    "country" => "CANADA",
    "domain" => "com",
    "email_hosts" => "gmail.com",
    "location_1" =>
      {
        "type" => "Point",
        "coordinates" => [ -73.567256, 45.501689 ]
      },
    "location_1_city" => "Montreal",
    "location_1_state" => "QC",
    "position" => "Co-Founder/Brand Strategist"
  },
  "National Instruments" => {
    "computed_region_cbhk_fwbd" => 23,
    "computed_region_nnqa_25f4" => 2924,
    "country" => "USA",
    "domain" => nil,
    "email_hosts" => "ni.com",
    "location_1" =>
      {
        "type" => "Point",
        "coordinates" => [ -97.743061, 30.267153 ]
      },
    "location_1_city" => "Austin",
    "location_1_state" => "TX",
    "position" => "Staff Software Engineer"
  },
  "Nottingham Spirk" => {
    "computed_region_cbhk_fwbd" => 38,
    "computed_region_nnqa_25f4" => 2515,
    "country" => "USA",
    "domain" => "com",
    "email_hosts" => "nottinghamspirk.com",
    "location_1" =>
      {
        "type" => "Point",
        "coordinates" => [ -81.917917, 41.455323 ]
      },
    "location_1_city" => "Westlake",
    "location_1_state" => "OH",
    "position" => "Principal"
  },
  "ANG Marketing and Advertising" => {
    "computed_region_cbhk_fwbd" => 45,
    "computed_region_nnqa_25f4" => 1815,
    "country" => "USA",
    "domain" => nil,
    "email_hosts" => "mail.mil",
    "location_1" =>
      {
        "type" => "Point",
        "coordinates" => [ -76.883626, 38.79652 ]
      },
    "location_1_city" => "Joint Base Andrews",
    "location_1_state" => "MD",
    "position" => "Chief, ANG Mktg & Advertising"
  },
  "Garmin International" => {
    "computed_region_cbhk_fwbd" => 17,
    "computed_region_nnqa_25f4" => 1237,
    "country" => "USA",
    "domain" => "com",
    "email_hosts" => "garmin.com",
    "location_1" =>
      {
        "type" => "Point",
        "coordinates" => [ -94.819128, 38.881396 ]
      },
    "location_1_city" => "Olathe",
    "location_1_state" => "KS",
    "position" => "Product Architect, Mobile & Wearable Devices"
  },
  "Arlington Economic Development" => {
    "computed_region_cbhk_fwbd" => 23,
    "computed_region_nnqa_25f4" => 2919,
    "country" => "USA",
    "domain" => nil,
    "email_hosts" => "arlingtonva.us",
    "location_1" =>
      {
        "type" => "Point",
        "coordinates" => [ -97.108066, 32.735687 ]
      },
    "location_1_city" => "Arlington",
    "location_1_state" => "VA",
    "position" => "Business Dev Mgr"
  },
  "VCU Brandcenter" => {
    "computed_region_cbhk_fwbd" => 40,
    "computed_region_nnqa_25f4" => 2947,
    "country" => "USA",
    "domain" => "edu",
    "email_hosts" => "mymail.vcu.edu",
    "location_1" =>
      {
        "type" => "Dot",
        "coordinates" => [ -77.436048, 37.540725 ]
      },
    "location_1_city" => "Richmond",
    "location_1_state" => "VA",
    "position" => "Student"
  }
]

# 1. Create a method called company_name that takes in two arguments, an array and a company name.The method must return the entire hash for the given company.
def company_name(source, query)
  company = []
  source.each do |set|
    company << set.detect {|key, value| key == query}.last
  end
  puts company.join(", ")
  return company
end

company_name(nasa_data, "Garmin International")

# 2. Create a method called location that takes in an array and returns the city and state for every company.
puts "\n"
def location(source)
  location_list = []
  source.each do |set|
    set.each do |key, value|
      location_list << {
        name: key,
        city: value["location_1_city"],
        state: value["location_1_state"]
      }
    end
  end
  location_list.each do |loc|
    puts "#{loc[:name]}: #{loc[:city]}, #{loc[:state]}"
  end
  return location_list
end

location(nasa_data)

# 3. Create a method called id_number that takes in an array and returns each company name and its computed_region_cbhk_fwbd id number.
puts "\n"
def id_number(source)
  id_list = []
  source.each do |set|
    set.each do |key, value|
      id_list << {
        name: key,
        id:   value["computed_region_cbhk_fwbd"]
      }
    end
  end
  id_list.each {|item| puts "#{item[:name]}: #{item[:id]}"}
  return id_list
end

id_number(nasa_data)

# 4. Create a method called position that returns each company name and their listed position.
puts "\n"
def position(source)
  position_list = []
  source.each do |set|
    set.each do |key, value|
      position_list << {
        name:     key,
        position: value["position"]
      }
    end
  end
  position_list.each {|item| puts "#{item[:name]}: #{item[:position]}"}
  return position_list
end

position(nasa_data)

# 5. Create a method called type that takes in an array and returns each company name followed by their location_1 type.
# Your code here


type(nasa_data)

# 6. Create a method called number that takes in an array and returns the name of the company that has the highest computed_region_nnqa_25f4 number.
# Your code here


number(nasa_data)

# 7. Create a method called gmail that takes in an array and returns the amount of companies that have gmail.com as their email_hosts.
# Your code here


gmail(nasa_data)

# 8. Create a method called no_domain that takes in an array and returns the number of companies that **do not** have a domain listed in nasa_data.


no_domain(nasa_data)
