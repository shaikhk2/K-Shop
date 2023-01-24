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
    name: "Polka Dot Dress", 
    price: "20.99", 
    color: "Red",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: dress,
    description: "A beautiful knee length casual red dress with polka dots, short sleeves, and a belt to the side.", 
    image: "https://m.media-amazon.com/images/I/71INse-VRLS._MCnd_AC_SR175,263_QL70_.jpg" 
    )

item2 = Item.create( 
    name: "V-Neck Dress", 
    price: "39.00", 
    color: "Black",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: dress,
    description: "A gorgeous deep V-Neck Mini Swing Skater Dresses with Long Sleeves and a Waist Tie Ruffle.", 
    image: "https://m.media-amazon.com/images/I/51YGdPjQZCL._AC_UX679_.jpg" 
    )

item3 = Item.create( 
    name: "Velvet Mini Dress", 
    price: "44.99", 
    color: "Green",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: dress, 
    description: " A beautiful Semi Formal Velvet Mini Dress with Long Sleeves and a Waist Tie.",
    image: "https://m.media-amazon.com/images/I/71uKhTq6cFL._AC_SY879._SX._UX._SY._UY_.jpg" 
    )

item4 = Item.create( 
    name: "Floral Dress", 
    price: "34.91", 
    color: "Navy Blue",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: dress, 
    description: "A Vintage Floral Flared A-Line Swing Casual Party Dresses with Side Pockets.", 
    image: "https://m.media-amazon.com/images/I/61qVFu6xWCL._AC_SY879._SX._UX._SY._UY_.jpg"
    )

item5 = Item.create( 
    name: "Mini Sweater Dress", 
    price: "46.99", 
    color: "Purple",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: dress, 
    description: "A warm Turtleneck Soft Knit Mini Sweater Dress with Long Sleeves.", 
    image: "https://m.media-amazon.com/images/I/81Kv85weCeL._AC_SY879._SX._UX._SY._UY_.jpg"
    )

#gowns
item6 = Item.create( 
    name: "Sequined Gown", 
    price: "88.89", 
    color: "Navy Blue",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A Long and Elegant Gold Evening Gown with Long Sleeves, Sequins, and Glitter Fabric.", 
    image: "https://slimages.macysassets.com/is/image/MCY/products/8/optimized/23087978_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp"
    )
#change bc of background
item7 = Item.create( 
    name: "Strapless Ball Gown", 
    price: "340.00", 
    color: "Black",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A beautiful Floor-length formal dress with a skirt that flares from the waist.", 
    image: "https://slimages.macysassets.com/is/image/MCY/products/5/optimized/18662925_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp"
    )

item8 = Item.create( 
    name: "Pleated Ruffled Gown", 
    price: "249.00", 
    color: "Emerald",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A Stunning Evening Gown with three-quarter-length sleeves and an elegant waterfall ruffle.", 
    image: "https://slimages.macysassets.com/is/image/MCY/products/8/optimized/19626068_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp"
    )
#maybe change bc of background
item9 = Item.create( 
    name: "V-Neck Satin Gown", 
    price: "46.99", 
    color: "Blue",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A beautiful V-Neck Satin Gown with a leg slit and Adjustable Straps.", 
    image: "https://slimages.macysassets.com/is/image/MCY/products/4/optimized/16469824_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp"
    )

item10 = Item.create( 
    name: "Flutter Sleeve Gown", 
    price: "369.00", 
    color: "Purple",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A stunning Round Illusion neckline Gown with Flutter Sleeves and A Back Zipper.", 
    image: "https://slimages.macysassets.com/is/image/MCY/products/7/optimized/22778967_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp"
    )

#shirts
item11 = Item.create( 
    name: "Polka Dot Blouse", 
    price: "41.40", 
    color: "White",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A Formal Polka Dot Buttoned Blouse with a Bow and a Collared Neckline", 
    image: "https://slimages.macysassets.com/is/image/MCY/products/0/optimized/22325750_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp" 
    )
#change bc of background
item12 = Item.create( 
    name: "Tie-Neck Georgette Shirt", 
    price: "48.53", 
    color: "Multi",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A dramatic tie-neck Buttoned Blouse with Long and Pleated Sleeves.", 
    image: "https://slimages.macysassets.com/is/image/MCY/products/3/optimized/22771823_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp" 
    )

item13 = Item.create( 
    name: "Long Sleeve Shirt", 
    price: "26.99", 
    color: "Red",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A beautiful casual Square Necked Top with Polka Dotted Mesh Long Sleeves.", 
    image: "https://m.media-amazon.com/images/I/61A0PmSpRLL._AC_SY879._SX._UX._SY._UY_.jpg" 
    )

item14 = Item.create( 
    name: "Peplum Shirt", 
    price: "39.00", 
    color: "Orange",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A casual V-Neck shirt made with Peplum, with Puffy Long sleeves and Pleated Ruffle Hem.", 
    image: "https://m.media-amazon.com/images/I/711fN7wOY+L._AC_SY879._SX._UX._SY._UY_.jpg" 
    )

item15 = Item.create( 
    name: "V-Neck Shirt", 
    price: "27.99", 
    color: "Blue",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A beautiful V-Neck Cropped Shirt with Elastic Cuffed Long Sleeves and a Self Tie Knot.", 
    image: "https://m.media-amazon.com/images/I/811n4EmcjTL._AC_UY879_.jpg" 
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