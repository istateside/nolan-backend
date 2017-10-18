# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
def make_image(url)
  puts "making image for #{url}"
  img = Image.new
  img.attachment = open("app/assets/images/#{url}")
  img.save!

  img
end

def make_slides(urls)
  puts "Making slides"
  urls.map.with_index{ |url, i|
    slide = Slide.new
    slide.image = make_image(url) 
    slide.save!

    slide
  }
end

puts "making canis"
canis = Project.new
canis.category = 'Comics'
canis.title = 'Canis'
canis.cover_image = make_image('aubrey-assets/comics/Comics_Canis1.jpg')
canis.slides = make_slides([
  'aubrey-assets/comics/Comics_Canis1.jpg',
  'aubrey-assets/comics/Comics_Canis2.jpg',
  'aubrey-assets/comics/Comics_Canis3.jpg',
  'aubrey-assets/comics/Comics_Canis4.jpg',
  'aubrey-assets/comics/Comics_Canis5.jpg',
  'aubrey-assets/comics/Comics_Canis6.jpg',
  'aubrey-assets/comics/Comics_Canis7.jpg',
  'aubrey-assets/comics/Comics_Canis8.jpg',
  'aubrey-assets/comics/Comics_Canis9.jpg',
  'aubrey-assets/comics/Comics_Canis10.jpg'
])

canis.save!

puts "makin greenpointers"
greenpointers = Project.new
greenpointers.category = 'Comics'
greenpointers.title = 'Greenpointers'
greenpointers.cover_image = make_image('aubrey-assets/comics/Comics_Greenpointers_1.jpg')
greenpointers.slides = make_slides([
  'aubrey-assets/comics/Comics_Greenpointers_1.jpg',
  'aubrey-assets/comics/Comics_Greenpointers_2.jpg',
  'aubrey-assets/comics/Comics_Greenpointers_3.jpg',
  'aubrey-assets/comics/Comics_Greenpointers_4.jpg',
  'aubrey-assets/comics/Comics_Greenpointers_5.jpg',
  'aubrey-assets/comics/Comics_Greenpointers_6.jpg'
])

greenpointers.save!

puts 'making heather'
heather = Project.new
heather.category = 'Comics',
heather.title =  'Heather'
heather.cover_image = make_image('aubrey-assets/comics/Comics_Heather1.jpg')
heather.slides = make_slides([
  'aubrey-assets/comics/Comics_Heather1.jpg',
  'aubrey-assets/comics/Comics_Heather2.jpg',
  'aubrey-assets/comics/Comics_Heather3.jpg',
  'aubrey-assets/comics/Comics_Heather4.jpg',
  'aubrey-assets/comics/Comics_Heather5.jpg',
  'aubrey-assets/comics/Comics_Heather6.jpg',
  'aubrey-assets/comics/Comics_Heather7.jpg',
  'aubrey-assets/comics/Comics_Heather8.jpg',
  'aubrey-assets/comics/Comics_Heather9.jpg',
  'aubrey-assets/comics/Comics_Heather10.jpg',
  'aubrey-assets/comics/Comics_Heather11.jpg'
])

heather.save!

puts 'meeting place'
meeting_place = Project.new
meeting_place.category = 'Comics'
meeting_place.title = 'Meeting Place'
meeting_place.cover_image = make_image('aubrey-assets/comics/Comics_MeetingPlace_1.jpg')
meeting_place.slides = make_slides([
  'aubrey-assets/comics/Comics_MeetingPlace_1.jpg'
])

meeting_place.save!

puts 'productivity'
productivity = Project.new
productivity.category = 'Comics'
productivity.title = 'Productivity'
productivity.cover_image = make_image('aubrey-assets/comics/Comics_Productivity1.jpg')
productivity.slides = make_slides([
  'aubrey-assets/comics/Comics_Productivity1.jpg',
  'aubrey-assets/comics/Comics_Productivity2.jpg',
  'aubrey-assets/comics/Comics_Productivity3.jpg'
])
productivity.save!

goldhawk = Project.new
goldhawk.category = 'Illustrations'
goldhawk.title = 'The Rumpus - Goldhawk'
goldhawk.cover_image = make_image('aubrey-assets/illustration/Illustration__TheRumpus_Goldhawk1.jpg')
goldhawk.slides = make_slides([
  'aubrey-assets/illustration/Illustration__TheRumpus_Goldhawk1.jpg',
  'aubrey-assets/illustration/Illustration__TheRumpus_Goldhawk2.jpg',
  'aubrey-assets/illustration/Illustration__TheRumpus_Goldhawk3.jpg'
])
goldhawk.save!

greenpointers2 = Project.new
greenpointers2.category = 'Illustrations'
greenpointers2.title = 'Greenpointers'
greenpointers2.cover_image = make_image('aubrey-assets/illustration/Illustration_Greenpointers1.jpg')
greenpointers2.slides = make_slides([
  'aubrey-assets/illustration/Illustration_Greenpointers1.jpg',
  'aubrey-assets/illustration/Illustration_Greenpointers2.jpg',
  'aubrey-assets/illustration/Illustration_Greenpointers3.jpg',
  'aubrey-assets/illustration/Illustration_Greenpointers4.jpg',
  'aubrey-assets/illustration/Illustration_Greenpointers5.jpg'
])
greenpointers2.save!

mother = Project.new
mother.category = 'Illustrations'
mother.title = 'The Rumpus - Mother'
mother.cover_image = make_image('aubrey-assets/illustration/Rumpus_Mother1.jpg')
mother.slides = make_slides([
  'aubrey-assets/illustration/Rumpus_Mother1.jpg',
  'aubrey-assets/illustration/Rumpus_Mother2.jpg',
  'aubrey-assets/illustration/Rumpus_Mother3.jpg',
  'aubrey-assets/illustration/Rumpus_Mother4.jpg'
])
mother.save!

personal = Project.new
personal.category = 'Illustrations'
personal.title = 'Personal Work'
personal.cover_image = make_image('aubrey-assets/illustration/Illustration_Personal.jpg')
personal.slides = make_slides([
  'aubrey-assets/illustration/Illustration_Personal.jpg',
  'aubrey-assets/illustration/Illustration_Personal2.jpg',
  'aubrey-assets/illustration/Illustration_Personal3.jpg'
])
personal.save!

panels = Project.new
panels.category = 'Other'
panels.title = 'Panels to the People'
panels.description = 'Monthly, themed readings of comics by established and up-and-coming comics creators. Formerly at Babycastles Gallery, now at WORD Bookstore.
Co-hosted with cartoonist Jeremy Nguyen.

Information on current themes and upcoming readings [here](https://www.facebook.com/panelstothepeople)'
panels.cover_image = make_image('aubrey-assets/other/P2tp.jpg')
panels.save!

type = Project.new
type.category = 'Other'
type.title = 'What Type of Girl?'
type.description = 'Art show at Babycastles Gallery in Manhattan'
type.cover_image = make_image('aubrey-assets/other/Other Projects_WTOG2.jpg')
type.slides = make_slides([
  'aubrey-assets/other/Other Projects_WTOG1.jpg',
  'aubrey-assets/other/Other Projects_WTOG2.jpg',
  'aubrey-assets/other/Other Projects_WTOG3.jpg',
  'aubrey-assets/other/Other Projects_WTOG4.jpg',
  'aubrey-assets/other/Other Projects_WTOG5.jpg',
  'aubrey-assets/other/Other Projects_WTOG6.jpg',
  'aubrey-assets/other/Other Projects_WTOG7.jpg',
  'aubrey-assets/other/Other Projects_WTOG8.jpg',
  'aubrey-assets/other/Other Projects_WTOG9.jpg'
])
type.save!

about = Project.new
about.title = "About"
about.category = "About"
about.cover_image = make_image('lady-head.png')
about.description = <<-HEREDOC
Aubrey Nolan is a visual artist specializing in watercolor-and-ink illustrations and comics of commonplace, yet whimsical, scenes. She graduated from SUNY New Paltz with a BFA in Painting + Drawing in 2012 and is based in Brooklyn.

You can email her for freelance work or just to say hi at [aubreygnolan@gmail.com](mailto:aubreygnolan@gmail.com).

You can take a look at how put together she truly can be on [LinkedIn](https://www.linkedin.com/in/aubrey-nolan-26352966/?locale=en_US).

You can follow her [Instagram](https://www.instagram.com/itsaubreynotaudrey) for her most current work as well as snapshots of works in progress.

You can take a look at the far-from-cohesive thought dump that is her [Twitter](https://twitter.com/aubrey_nolan).
HEREDOC

about.save!
