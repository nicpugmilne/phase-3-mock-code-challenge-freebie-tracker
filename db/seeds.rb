puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
Freebie.create(item_name: "T-shirt", value: 15, dev_id: 1, company_id: 2)
Freebie.create(item_name: "Mug", value: 12, dev_id: 4, company_id: 3)
Freebie.create(item_name: "Drink bottle", value: 8, dev_id: 3, company_id: 4)
Freebie.create(item_name: "Backpack", value: 25, dev_id: 2, company_id: 1)
Freebie.create(item_name: "Socks", value: 10, dev_id: 4, company_id: 2)

puts "Seeding done!"
