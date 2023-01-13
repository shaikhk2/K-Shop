puts "Destroying all..."
CartItem.destroy_all
Item.destroy_all
Cart.destroy_all
Category.destroy_all
User.destroy_all


puts "Creating users..."
#Users
user1 = User.create( 
    name: "Bob", 
    username: "bobb1", 
    password: "1231", 
    email: "bobb1@example.com", 
    address: "9047 Trusel Avenue Ypsilanti, MI 48197", 
    phone: "(282) 505-0988" )

user2 = User.create( 
    name: "Noah", 
    username: "noahh2", 
    password: "1232", 
    email: "noahh2@example.com", 
    address: "153 River Court Derry, NH 03038", 
    phone: "(774) 920-3942" )

user3 = User.create( 
    name: "Gaten", 
    username: "gatenn3", 
    password: "1233", 
    email: "gatenn3@example.com", 
    address: "7014 Catherine Road Middle Village, NY 11379", 
    phone: "(490) 980-1513" )

user4 = User.create( 
    name: "Millie", 
    username: "milliee4", 
    password: "1234", 
    email: "milliee4@example.com", 
    address: "23 Theatre St. Edison, NJ 08817", 
    phone: "(471) 421-7656" )

user5 = User.create( 
    name: "Max", 
    username: "maxx5", 
    password: "1235", 
    email: "maxx5@example.com", 
    address: "319 Old Clay Drive Lenoir, NC 28645", 
    phone: "(314) 456-0988" )

puts "Creating Carts..."
#Carts
cart1 = Cart.create( name: "Bob's Cart", user_id: user1.id )
cart2 = Cart.create( name: "Noah's Cart" , user_id: user2.id )
cart3 = Cart.create( name: "Gaten's Cart", user_id: user3.id )
cart4 = Cart.create( name: "Millie's Cart", user_id: user4.id )
cart5 = Cart.create( name: "Max's Cart", user_id: user5.id )

puts "Creating Categories..."
#Categories
shirt = Category.create( name: "Shirt" )
pant = Category.create( name: "Pant" )
dress = Category.create( name: "Dress" )
suit = Category.create( name: "Suit" )
gown = Category.create( name: "Gown" )

puts "Creating Items..."
#dress
item1 = Item.create( 
    name: "Red Polka Dot Dress", 
    price: "20.99", 
    color: "red",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: dress,
    description: "A beautiful casual red dress with polka dots. The dress is knee length with short sleeves and a belt to tie to the side. ", 
    image: "https://m.media-amazon.com/images/I/71INse-VRLS._MCnd_AC_SR175,263_QL70_.jpg" 
    )

item2 = Item.create( 
    name: "Ball Gown", 
    price: "200.00", 
    color: "",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown,
    description: "A beautiful Ball Gown dress", 
    image: "https://www.thecelebritydresses.com/media/catalog/product/cache/1/image/650x/040ec09b1e35df139433887a97daa66f/s/i/simple_backless_a-line_dress_2_.jpg" 
    )

item3 = Item.create( 
    name: "Strapless", 
    price: "50.00", 
    color: "",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt, 
    description: "A beautiful Strapless dress", 
    image: "https://www.thecelebritydresses.com/media/catalog/product/cache/1/image/650x/040ec09b1e35df139433887a97daa66f/s/i/simple_backless_a-line_dress_2_.jpg" 
    )

item4 = Item.create( 
    name: "Apron Dress", 
    price: "35.00", 
    color: "",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: pant, 
    description: "A beautiful Apron dress", 
    image: "https://www.thecelebritydresses.com/media/catalog/product/cache/1/image/650x/040ec09b1e35df139433887a97daa66f/s/i/simple_backless_a-line_dress_2_.jpg"
    )

item5 = Item.create( 
    name: "Sundress", 
    price: "25.00", 
    color: "",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: suit, 
    description: "A beautiful Sundress dress", 
    image: "https://www.thecelebritydresses.com/media/catalog/product/cache/1/image/650x/040ec09b1e35df139433887a97daa66f/s/i/simple_backless_a-line_dress_2_.jpg"
    )


puts "Creating CartItems..."
#CartItems
cartitem1 = CartItem.create( name: "Strapless", quantity: 2, cart_id: cart5.id, item_id: item2.id )
cartitem2 = CartItem.create( name: "Ball Gown", quantity: 1, cart_id: cart1.id, item_id: item5.id )
cartitem3 = CartItem.create( name: "Apron Dress", quantity: 1, cart_id: cart3.id, item_id: item3.id )
cartitem4 = CartItem.create( name: "Sundress", quantity: 3, cart_id: cart4.id, item_id: item4.id )
cartitem5 = CartItem.create( name: "A-line Dress", quantity: 1, cart_id: cart5.id, item_id: item1.id )
cartitem6 = CartItem.create( name: "Strapless", quantity: 2, cart_id: cart2.id, item_id: item2.id )

puts "Done!!!"