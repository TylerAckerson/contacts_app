user1 = User.create!(username: "Aragorn")
user2 = User.create!(username: "Gimli")
user3 = User.create!(username: "Golem")

contact1 = Contact.create!(name: "Frodo", email: "frodo@shire.com",
                                          user_id: user1.id)
contact2 = Contact.create!(name: "Bilbo", email: "bilbo@shire.com",
                                          user_id: user2.id)
contact3 = Contact.create!(name: "Gandalph", email: "gandalph@shire.com",
                                             user_id: user3.id)


share1 = ContactShare.create!(contact_id: contact1.id, user_id: user2.id)
share2 = ContactShare.create!(contact_id: contact2.id, user_id: user1.id)
share3 = ContactShare.create!(contact_id: contact1.id, user_id: user3.id)
