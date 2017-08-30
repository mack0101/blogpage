# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :name => 'Mac', :email => 'mac@mail.com', :password => 'chicken', :password_confirmation => 'chicken'

Post.destroy_all
p1 = Post.create :title => 'Bacon One', :body => 'Spicy jalapeno bacon ipsum dolor amet leberkas filet mignon flank meatball tail tongue, alcatra pork swine frankfurter short loin burgdoggen. Prosciutto leberkas sirloin doner picanha, tri-tip drumstick tail cupim pancetta rump kevin. Kielbasa doner pastrami, frankfurter alcatra biltong drumstick venison salami picanha brisket. Landjaeger chicken drumstick tenderloin shankle, beef ribs t-bone pork chop leberkas capicola beef pastrami alcatra. Bacon landjaeger jowl, swine chicken tail porchetta jerky shank doner pork chop pork tri-tip fatback. Boudin ground round leberkas jerky rump. Shankle ball tip tri-tip, boudin beef ribs chuck andouille salami doner tenderloin ham hock swine spare ribs short loin capicola.'

u1.posts << p1
