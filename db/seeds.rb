# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.destroy_all
House.destroy_all

House.create([
  {house_name: "House Stark", img_url:"http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest?cb=20170101103142"},
  {house_name: "House Lannister", img_url:"https://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest?cb=20170101095357"},
  {house_name: "House Greyjoy", img_url:"https://vignette3.wikia.nocookie.net/gameofthrones/images/8/86/House-Greyjoy-Main-Shield.PNG/revision/latest?cb=20170523015836"},
  {house_name: "House Tarly", img_url:"http://vignette2.wikia.nocookie.net/gameofthrones/images/2/2d/House-Tarly-Main-Shield.PNG/revision/latest?cb=20161231133616"}
])

Character.create([
  {name:"Jon Stark", img_url:"https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwjq7cal3LnVAhXC5YMKHYrdDyEQjBwIBA&url=https%3A%2F%2Fpmctvline2.files.wordpress.com%2F2016%2F02%2Fgame-of-thrones-jon-snow.jpg%3Fw%3D620&psig=AFQjCNHHEY4HArttVEsZioxE1hsElU9OAw&ust=1501803536882641", house: House.find_by(house_name: 'house stark')},
  {name:"Arya Stark", img_url:"http://cdn.images.express.co.uk/img/dynamic/20/590x/secondary/Arya-Stark-557898.jpg", house: House.find_by(house_name: 'House Stark')},
  {name:"Cersei Lannister", img_url:"https://hypebeast.imgix.net/http%3A%2F%2Fhypebeast.com%2Fimage%2F2017%2F03%2Ffacebook-teaser_720.jpg?fit=max&fm=pjpg&ixlib=php-1.1.0&q=90&w=960&s=7ae0ccf59b50ae5fca26bbffb6e4a905", house: House.find_by(house_name: 'House lannister')},
  {name:"Jamie Lannister", img_url:"http://cdn.images.express.co.uk/img/dynamic/20/590x/secondary/Jaime-Lannister-953791.jpg", house: House.find_by(house_name: 'House lannister')},
  {name:"Samwell Tarly", img_url:"http://legionofleia.com/wp-content/uploads/2015/09/game-of-thrones-1070x602.jpg", house: House.find_by(house_name: 'House Tarly')},
  {name:"Yara Greyjoy", img_url:"http://images3.cliqueclack.com/p/files/2014/03/Game-of-Thrones-Yara-Greyjoy-Gemma-Whelan-640x420.jpg", house: House.find_by(house_name: 'House Greyjoy')},
  {name:"Theon Greyjoy", img_url:"https://vignette3.wikia.nocookie.net/gameofthrones/images/5/5d/Theon_Greyjoy_bow.jpg/revision/latest?cb=20110318200120", house: House.find_by(house_name: 'House Greyjoy')}
  ])
