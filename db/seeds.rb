# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :name => 'Mac', :email => 'mac@mail.com', :password => 'chicken', :password_confirmation => 'chicken'

u2 = User.create :name => 'Grucha', :email => 'grucha@mail.com', :password => 'chicken', :password_confirmation => 'chicken'

Post.destroy_all
p1 = Post.create :title => 'Bacon One', :body => 'Spicy jalapeno bacon ipsum dolor amet leberkas filet mignon flank meatball tail tongue, alcatra pork swine frankfurter short loin burgdoggen. Prosciutto leberkas sirloin doner picanha, tri-tip drumstick tail cupim pancetta rump kevin. Kielbasa doner pastrami, frankfurter alcatra biltong drumstick venison salami picanha brisket. Landjaeger chicken drumstick tenderloin shankle, beef ribs t-bone pork chop leberkas capicola beef pastrami alcatra. Bacon landjaeger jowl, swine chicken tail porchetta jerky shank doner pork chop pork tri-tip fatback. Boudin ground round leberkas jerky rump. Shankle ball tip tri-tip, boudin beef ribs chuck andouille salami doner tenderloin ham hock swine spare ribs short loin capicola.'

p2 = Post.create :title => 'Bacon Two', :body => 'Ribeye kevin swine sausage turkey prosciutto, andouille ground round jowl brisket pork venison leberkas. Cow alcatra t-bone salami kevin pancetta prosciutto ham hock cupim chuck short ribs pork strip steak beef. Beef ball tip fatback rump bacon kielbasa short ribs picanha tenderloin turducken bresaola spare ribs. Tongue salami fatback sirloin venison cupim meatball corned beef prosciutto pork chop filet mignon swine. Beef pancetta swine turkey, pig salami picanha strip steak doner pork chop jerky tri-tip sirloin fatback pastrami.'

u1.posts << p1
u2.posts << p2
