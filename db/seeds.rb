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

item6 = Item.create( 
    name: "Summer Tunic Dress", 
    price: "31.98", 
    color: "Burgundy",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: dress, 
    description: "A beautiful Deep V-Neck Knee-Length Dress with long Lantern Sleeves and Ruffles.", 
    image: "https://m.media-amazon.com/images/I/71JFaKnNJhL._AC_UY879_.jpg"
    )

item7 = Item.create( 
    name: "Floral Lace Dress", 
    price: "47.99", 
    color: "White",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: dress, 
    description: "A Perfect Rich Fabric Knee-Length Lace Dress with a Full Zip and Short Sleeves.", 
    image: "https://m.media-amazon.com/images/I/61ZjwwkCPcL._AC_SY879._SX._UX._SY._UY_.jpg"
    )

item8 = Item.create( 
    name: "Floral Mini Dress", 
    price: "26.99", 
    color: "Navy Blue",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: dress, 
    description: "A Gorgeous Navy Blue Cross V-Neck Dress with White Flowers and Ruffles Long Sleeves.", 
    image: "https://m.media-amazon.com/images/I/71NBj9O1JqL._AC_SY879._SX._UX._SY._UY_.jpg"
    )

item9 = Item.create( 
    name: "Chiffon Evening Dress", 
    price: "43.99", 
    color: "Pink",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: dress, 
    description: "A Charming Cape Sleeve Knee Length Dress with a Scoop Neckline in front and V-Neck in the back.", 
    image: "https://m.media-amazon.com/images/I/51+beyrx9vS._AC_SX679._SX._UX._SY._UY_.jpg"
    )

item10 = Item.create( 
    name: "Cocktail Skater Dress", 
    price: "38.99", 
    color: "Red",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: dress, 
    description: "A Super Soft Off-the-Shoulder Knee-Length Dress with Short Sleeves and a Flared Swing.", 
    image: "https://m.media-amazon.com/images/I/610DeSphS1L._AC_SY879._SX._UX._SY._UY_.jpg"
    )


#gowns
item11 = Item.create( 
    name: "Sequined Gown", 
    price: "88.89", 
    color: "Navy Blue",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A Long and Elegant Gold Evening Gown with Long Sleeves, Sequins, and Glitter Fabric.", 
    image: "https://slimages.macysassets.com/is/image/MCY/products/8/optimized/23087978_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp"
    )

item12 = Item.create( 
    name: "Off Shoulder Gown", 
    price: "100.00", 
    color: "Black",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A Beautiful Fitted Floor-length Formal Dress with a V-Neck Backless Design on the Back.", 
    image: "https://m.media-amazon.com/images/I/41jCG68S1VL._AC_UY879_.jpg"
    )

item13 = Item.create( 
    name: "Pleated Ruffled Gown", 
    price: "249.00", 
    color: "Emerald",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A Stunning Evening Gown with three-quarter-length sleeves and an elegant waterfall ruffle.", 
    image: "https://slimages.macysassets.com/is/image/MCY/products/8/optimized/19626068_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp"
    )

item14 = Item.create( 
    name: "Sequin Evening Gown", 
    price: "66.99", 
    color: "Burgundy",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A beautiful Floor Length Sequin Gown with Half Sleeves and a Round Neck.", 
    image: "https://m.media-amazon.com/images/I/61vC-Mv3tXL._AC_SY879._SX._UX._SY._UY_.jpg"
    )

item15 = Item.create( 
    name: "Flutter Sleeve Gown", 
    price: "369.00", 
    color: "Purple",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A stunning Round Illusion neckline Gown with Flutter Sleeves and A Back Zipper.", 
    image: "https://slimages.macysassets.com/is/image/MCY/products/7/optimized/22778967_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp"
    )

item16 = Item.create( 
    name: "Backless Sequin Gown", 
    price: "129.99", 
    color: "Navy Blue",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A beautiful Gown Made with Navy Blue Sequin Fabric with a Deep V-Neck Neck, Short Sleeves, and Wide Open Back.", 
    image: "https://m.media-amazon.com/images/I/71memExsfRL._AC_UY879_.jpg"
    )

item17 = Item.create( 
    name: "Floral Plunging Gown", 
    price: "269.06", 
    color: "Nude",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A Beautiful Embellished Gown with 3D Black Flowers and a Knee Length Dress Attached.", 
    image: "https://m.media-amazon.com/images/I/912ZoPZhcdS._AC_SY879._SX._UX._SY._UY_.jpg"
    )

item18 = Item.create( 
    name: "Chiffon A-Line Gown", 
    price: "89.99", 
    color: "Lilac",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A Stunning Floor Length Laced A-Line Gown with Short Sleeves and a Long Flowy Skirt.", 
    image: "https://m.media-amazon.com/images/I/51Rge3nBfAL._AC_SX679._SX._UX._SY._UY_.jpg"
    )

item19 = Item.create( 
    name: "A-Line Satin Gown", 
    price: "79.99", 
    color: "Emerald",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A Soft Satin Floor Length Sleeveless Gown with Pockets and a Zipper in the Back.", 
    image: "https://m.media-amazon.com/images/I/51cCWnHxZ0L._AC_UY879_.jpg"
    )

item20 = Item.create( 
    name: "Beach Wedding Gown", 
    price: "109.99", 
    color: "Ivory",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: gown, 
    description: "A Gorgeous Flooe Length Wedding Gown with a Deep V-Neck and a Beautiful Laced Top.", 
    image: "https://m.media-amazon.com/images/I/51sXmrZRoUS._AC_SY879._SX._UX._SY._UY_.jpg"
    )

#shirts
item21 = Item.create( 
    name: "Polka Dot Blouse", 
    price: "41.40", 
    color: "White",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A Formal Polka Dot Buttoned Blouse with a Bow and a Collared Neckline", 
    image: "https://slimages.macysassets.com/is/image/MCY/products/0/optimized/22325750_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1&fmt=webp" 
    )

item22 = Item.create( 
    name: "Button Down Shirt", 
    price: "29.99", 
    color: "Gray",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A Short Sleeve Button Down Shirt with an Adjustable Cuff and a Premium Pocket.", 
    image: "https://m.media-amazon.com/images/I/81oTmSS7J3L._AC_UY879_.jpg" 
    )

item23 = Item.create( 
    name: "Long Sleeve Shirt", 
    price: "26.99", 
    color: "Red",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A beautiful casual Square Necked Top with Polka Dotted Mesh Long Sleeves.", 
    image: "https://m.media-amazon.com/images/I/61A0PmSpRLL._AC_SY879._SX._UX._SY._UY_.jpg" 
    )

item24 = Item.create( 
    name: "Peplum Shirt", 
    price: "39.00", 
    color: "Orange",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A casual V-Neck shirt made with Peplum, with Puffy Long sleeves and Pleated Ruffle Hem.", 
    image: "https://m.media-amazon.com/images/I/711fN7wOY+L._AC_SY879._SX._UX._SY._UY_.jpg" 
    )

item25 = Item.create( 
    name: "V-Neck Shirt", 
    price: "27.99", 
    color: "Blue",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A beautiful V-Neck Cropped Shirt with Elastic Cuffed Long Sleeves and a Self Tie Knot.", 
    image: "https://m.media-amazon.com/images/I/811n4EmcjTL._AC_UY879_.jpg" 
    )

item26 = Item.create( 
    name: "Short Sleeve T-Shirt", 
    price: "19.99", 
    color: "Black",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A Rib-Knit Crew Neck Black T-Shirt with a Left Chest Pocket and a Tagless Neck Label.", 
    image: "https://m.media-amazon.com/images/I/81FZSo5m-2L._AC_UY879_.jpg" 
    )

item27 = Item.create( 
    name: "Long Sleeve Shirt", 
    price: "19.00", 
    color: "Blue",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A Long-Sleeve Button-Up Shirt with a Patch Chest Pocket and Rounded Barrel Cuffs.", 
    image: "https://m.media-amazon.com/images/I/91nKGdB2OnS._AC_SY879._SX._UX._SY._UY_.jpg" 
    )

item28 = Item.create( 
    name: "Cotton Shirt", 
    price: "14.00", 
    color: "Maroon",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A Long Sleeve Cotton Shirt with a Round Neckline a Three-button Placket in the Front.", 
    image: "https://m.media-amazon.com/images/I/61v-quCxZAL._AC_SX679._SX._UX._SY._UY_.jpg" 
    )

item29 = Item.create( 
    name: "Classic Cotton Shirt", 
    price: "11.15", 
    color: "Green",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A Soft Cotton Champion Half Sleeve T-Shirt with a Tonal Back Neck Tape and Higher Stitch Count.", 
    image: "https://m.media-amazon.com/images/I/71YL1cp15hL._AC_SY879._SX._UX._SY._UY_.jpg" 
    )

item30 = Item.create( 
    name: "Polo Shirt", 
    price: "40.01", 
    color: "Red",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: shirt,
    description: "A men's Polo Under Armour Short Sleeve Shirt with a Three-button Placket in the Front and a Collar.", 
    image: "https://m.media-amazon.com/images/I/51Dq5ZcdG+L._AC_SL1000_.jpg" 
    )

#pants
item31 = Item.create( 
    name: "Cotton Everyday Pant", 
    price: "18.00", 
    color: "Gray",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: pant,
    description: "A Comfortable Cotton Pant with Handy Pockets and an Elasticized Waist with Inner Drawcord for Custom Sizing.", 
    image: "https://m.media-amazon.com/images/I/81aQsFozwIL._AC_UY879_.jpg" 
    )

item32 = Item.create( 
    name: "Jogger Pants", 
    price: "28.88", 
    color: "Army Green",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: pant,
    description: "An Atheletic Jogger Pant with Four Unique Flap Pockets and a Drawstring Waistband for Sizing.", 
    image: "https://m.media-amazon.com/images/I/61NKxabqzzL._AC_UX679_.jpg" 
    )

item33 = Item.create( 
    name: "Classic Jeans", 
    price: "31.18", 
    color: "Navy Blue",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: pant,
    description: "A 5-Pocket Regular Fit Flex Jeans with a Zipper Fly, Button Closure and Embroidered Back Pockets.", 
    image: "https://m.media-amazon.com/images/I/81CGtpNkP7L._AC_UY879_.jpg" 
    )

item34 = Item.create( 
    name: "Regular Fit Jeans", 
    price: "33.20", 
    color: "Black",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: pant,
    description: "A Classic Wrangler's Five-Pocket Jeans made with durable flex denim and a Zipper Fly.", 
    image: "https://m.media-amazon.com/images/I/7132vkwZa-L._AC_UY879_.jpg" 
    )

item35 = Item.create( 
    name: "Snow Pants", 
    price: "35.00", 
    color: "Charcoal",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: pant,
    description: "A Snow Pant made with Thermalock Coating for Outdoor Resistance and Thermatech engineered for insulation.", 
    image: "https://m.media-amazon.com/images/I/71g3DSYJEUL._AC_UY879_.jpg" 
    )

item36 = Item.create( 
    name: "Knit Sweatpants", 
    price: "12.50", 
    color: "Gray",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: pant,
    description: "A Champion Cotton SweatPant made with Cotton Knit Fabric and an Open Bottom Leg for Unrestricted Mobility.", 
    image: "https://m.media-amazon.com/images/I/61fyoyHT4GL._AC_UX679_.jpg" 
    )

    
item37 = Item.create( 
    name: "Cargo Joggers", 
    price: "33.98", 
    color: "Camo Black",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: pant,
    description: "A Lightweight and Comfortable Jogger Pants with 5 Functional Pockets and Stretchy Ankle Cuffs.", 
    image: "https://m.media-amazon.com/images/I/613xQ1nBhqS._AC_UY879_.jpg" 
    )

item38 = Item.create( 
    name: "Athletic Hiking Pants", 
    price: "32.50", 
    color: "Khaki",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: pant,
    description: "A Super Lightweight and Causal Hiking Pant with an Elastic Waistband and Drawstrings for Sizing.", 
    image: "https://m.media-amazon.com/images/I/71qXF8ZPbEL._AC_UY879_.jpg" 
    )

item39 = Item.create( 
    name: "Trouser Pants", 
    price: "54.00", 
    color: "Plaid",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: pant,
    description: "A Mid Rise Regular Fit Trouser with a Non-binding Waistband and Two Front Slant and Two Back Pockets.", 
    image: "https://m.media-amazon.com/images/I/81eI6-NgYPL._AC_UY879_.jpg" 
    )

item40 = Item.create( 
    name: "Insulated SnoW Pants", 
    price: "24.99", 
    color: "Navy Blue",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: pant,
    description: "A ThermaTech Insulated Snow Pant with Scuff and Hem Guards and an Adjustable Waist for Comfortable Fit.", 
    image: "https://m.media-amazon.com/images/I/71mGHxiPklL._AC_UY879_.jpg" 
    )

#suits
item41 = Item.create( 
    name: "3 Piece Suit", 
    price: "94.99", 
    color: "Black",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: suit,
    description: "A Black 3 Piece Suit for All Kinds of Events made with Premium Fabric and 7 Different Pockets.", 
    image: "https://m.media-amazon.com/images/I/61ojmg2IVwL._AC_UX679_.jpg" 
    )

item42 = Item.create( 
    name: "Gray Tuxedo Set", 
    price: "94.99", 
    color: "Gray",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: suit,
    description: "A Gray 3 Piece Suit by Cooper & Nelson made with Breathable Fabric and it Has a Blue Tie", 
    image: "https://m.media-amazon.com/images/I/71Wo3bx8K-L._AC_UX679_.jpg" 
    )

item43 = Item.create( 
    name: "Bow Tie Suit", 
    price: "69.99", 
    color: "Light Blue",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: suit,
    description: "A Light Blue Mage & Blue 2 Piece Suit with a Light Blue Satin Bow Tie and Two front Pockets.", 
    image: "https://m.media-amazon.com/images/I/71ZJa1W8qcL._AC_UX679_.jpg" 
    )

item44 = Item.create( 
    name: "Green Suit", 
    price: "70.55", 
    color: "Green",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: suit,
    description: "A Green Mage & Blue 2 Piece Suit with a Green Satin Bow Tie and Many Different Pockets.", 
    image: "https://m.media-amazon.com/images/I/71JOGBDa6IL._AC_UX679_.jpg" 
    )

item45 = Item.create( 
    name: "Plaid Suit", 
    price: "99.99", 
    color: "Blue",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: suit,
    description: "A Blue Plaid Mage & Blue 3 Piece Suit with a Blue Satin Tie and Many Different Pockets.", 
    image: "https://m.media-amazon.com/images/I/713+fat378L._AC_UX679_.jpg" 
    )

item46 = Item.create( 
    name: "Bow Plaid Suit", 
    price: "100.00", 
    color: "Ivory",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: suit,
    description: "An Ivory Mage & Blue 3 Piece Suit with a Ivory Satin Bow Tie and Many Different Pockets.", 
    image: "https://m.media-amazon.com/images/I/81pCACwdhkL._AC_UX679_.jpg" 
    )

item47 = Item.create( 
    name: "Floral Suit", 
    price: "69.99", 
    color: "Golden",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: suit,
    description: "A Gold Stylish 2 Piece Suit with a Black Satin Bow Tie and Floral Design on the Front.", 
    image: "https://m.media-amazon.com/images/I/91Y+Ae6bBWL._AC_UY879_.jpg" 
    )

item48 = Item.create( 
    name: "Coffee Floral Suit", 
    price: "75.61", 
    color: "Coffee",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: suit,
    description: "A Coffee Stylish 2 Piece Tuxedo with a Coffee Satin Bow Tie and Floral Design on Front.", 
    image: "https://m.media-amazon.com/images/I/81eKaHWvs8L._AC_UY879_.jpg" 
    )

item49 = Item.create( 
    name: "Wedding Suit", 
    price: "150.00", 
    color: "Off-White",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: suit,
    description: "An Off-White Wedding 2 Piece Suit with a Beautiful Red Satin Bow Tie and Floral Design.", 
    image: "https://m.media-amazon.com/images/I/810GPtacoUL._AC_UY879_.jpg" 
    )

item50 = Item.create( 
    name: "Purple Tuxedo", 
    price: "85.20", 
    color: "Purple",
    size: ["XXS", "XS", "S", "M", "L", "XL", "XXL"],
    category: suit,
    description: "A Purple Paisley Floral 2 Piece Suit with a Red Satin Bow Tie and One Button Closure.", 
    image: "https://m.media-amazon.com/images/I/81FqRx7pJvL._AC_UY879_.jpg" 
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