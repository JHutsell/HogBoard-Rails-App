# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Club.destroy_all
Professor.destroy_all
Course.destroy_all

flitwick = Professor.create(name: "Filius Flitwick", house: "Ravenclaw", subject: "Charms")
sprout = Professor.create(name: "Pomona Sprout", house: "Hufflepuff", subject: "Herbology")
snape = Professor.create(name: "Severus Snape", house: "Slytherin", subject: "Potions")
lupin = Professor.create(name: "Remus Lupin", house: "Gryffindor", subject: "Defense Against the Dark Arts")
trelawney = Professor.create(name: "Sybill Trelawney", house: "Ravenclaw", subject: "Divination")
hagrid = Professor.create(name: "Rubeus Hagrid", house: "Gryffindor", subject: "Care of Magical Creatures")
mcgonagall = Professor.create(name: "Minerva McGonagall", house: "Grynffindor", subject: "Transfiguration")
burbage = Professor.create(name: "Charity Burbage", house: "Hufflepuff", subject: "Muggle Studies")
hooch = Professor.create(name: "Rolanda Hooch", house: "Ravenclaw", subject: "Quidditch")
franchely = Professor.create(name: "Franchely Portorreal", house: "Ravenclaw", subject: "Music")
justin = Professor.create(name: "Justin Hutsell", house: "Gryffindor", subject: "Wizarding Enjoyment")

quidditch = Club.create(name: "Quidditch Club", description: "Join our Hogwarts Quidditch team! Must have a broom! 🧹", professor: hooch)
dumbledores_army = Club.create(name: "Dumbledore's Army", description: "Join Dumbledore's Army! Learn helpful skills to defend against the Dark Arts!", professor: lupin)
newspaper_club = Club.create(name: "The Quibbler Club", description: "Write articles for your beloved Hogwarts. Published weekly in our long running publication, 'The Quibbler'.", professor: trelawney)
dueling = Club.create(name: "Dueling Club", description: "Learn to become a better duelist! Instructional courses on the art of wizard dueling.", professor: snape)
charms = Club.create(name: "Charms Club", description: "Learn fun charms and try them out on all your friends!", professor: flitwick)
animals = Club.create(name: "Magical Creatures Appreciation Club", description: "Learn about and sight-see all of the magical creatures around Hogwarts.", professor: hagrid)
choir = Club.create(name: "Wizard's Choir", description: "Learn to sing and harmonize with a group. Regular performances at the Great Hall.", professor: franchely)
fun = Club.create(name: "Extracurricular Wizarding Activities", description: "Join us for some magical fun. Meets late nights in Hogsmead. Must sign disclaimer.", professor: justin)

charms = Course.create(name: "Charms 101", description: "Learn the basics of adding properties to objects and creatures.", professor: flitwick)
herbs = Course.create(name: "Herbology 101", description: "Introduction to the study of magical plants and fungi.", professor: sprout)
potions = Course.create(name: "Potions 101", description: "Only 40% of my students pass this course. Enroll at your own risk.", professor: snape)
defense = Course.create(name: "Defense Against The Dark Arts", description: "Learn to magically defend yourselves against Dark creatures, the Dark Arts, and other Dark charms.", professor: lupin)
transfig = Course.create(name: "Transfiguration 101", description: "Introduction to the art of changing the form and appearance of an object or a person.", professor: mcgonagall)
divination = Course.create(name: "Divination", description: "Methods of divining the future through various rituals and tools. If you do not have the Sight, there is very little I will be able to teach you. (Elective)", professor: trelawney)
care = Course.create(name: "Care of Magical Creatures 101", description: "Learn about a wide range of magical creatures, from flobberworms to fire crabs, and even unicorns and thestrals.", professor: hagrid)
music = Course.create(name: "Music 101", description: "Learn the basics of musical instruments such as the dissimulator, harp, piano, and musical saw. Beginners welcome!", professor: franchely)
gym = Course.create(name: "Gym 101", description: "None.", professor: hooch)
fun = Course.create(name: "Mixology 101", description: "Learn how to have real wizard fun.", professor: justin)
