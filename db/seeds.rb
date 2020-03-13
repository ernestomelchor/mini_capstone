# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# suppliers
supplier = Supplier.new({ name: "Nike", email: "nike@example.com", phone_number: "777-777-7777" })
supplier.save
supplier = Supplier.new({ name: "Adidas", email: "adidas@example.com", phone_number: "888-888-8888" })
supplier.save
supplier = Supplier.new({ name: "Puma", email: "puma@example.com", phone_number: "999-999-9999" })
supplier.save

# products
product = Product.new({ name: "Nike Phantom Vision Elite FG", price: 295.00, description: "Built for the elite athlete looking for precision and control on the field.", amount: 25 })
product.save
product = Product.new({ name: "Nike Phantom Vision Elite Dynamic Fit FG", price: 161.00, description: "Brings the fierce precision of street play to the pitch with an inner sleeve designed for top finishers and playmakers.", amount: 75 })
product.save
product = Product.new({ name: "ADIDAS Predator Mutator 20+ FG", price: 275.00, description: "Bend the rules with rubber spines that grip the ball for unmatched swerve.", amount: 100 })
product.save
product = Product.new({ name: "ADIDAS X 19+ FG", price: 275.00, description: "For those who have speed built into their DNA. Laceless and ultralight to deliver a natural touch.", amount: 75 })
product.save

product = Product.new({ name: "Puma One 5.1 Limited Edition FG", price: 250.00, description: "A limited edition,  winter-ready cleat that delivers a perfect fit and feel on the ball. There is no competition.", amount: 20 })
product.save
product = Product.new({ name: "Nike Mercurial Superfly 7 Elite FG", price: 275.00, description: "Engineered for elite athletes looking for supercharged traction and explosive acceleration with every step.", amount: 10 })
product.save

#images
image = Image.new({ url: "https://c.static-nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/t9xd5hzbkqoy6ljvnwdr/phantom-vision-elite-id.jpg", product_id: 1 })
image.save
image = Image.new({ url: "https://c.static-nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/nlan13czmlczaarejjo2/phantom-vision-elite-id.jpg", product_id: 1 })
image.save
image = Image.new({ url: "https://c.static-nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/u724kmzbqt3zjihiyhiz/phantom-vision-elite-id.jpg", product_id: 1 })
image.save
image = Image.new({ url: "https://c.static-nike.com/a/images/t_PDP_1728_v1/f_auto,b_rgb:f5f5f5/mwouprq6l0sjbcyouwyh/phantom-vision-elite-dynamic-fit-fg-firm-ground-soccer-cleat-xQqVgP.jpg", product_id: 2 })
image.save
image = Image.new({ url: "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/eikpxgzjmikhkoeyyv7n/phantom-vision-elite-dynamic-fit-fg-firm-ground-soccer-cleat-xQqVgP.jpg", product_id: 2 })
image.save
image = Image.new({ url: "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/app84kypqxi9mukn65bd/phantom-vision-elite-dynamic-fit-fg-firm-ground-soccer-cleat-xQqVgP.jpg", product_id: 2 })
image.save
image = Image.new({ url: "https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/39997847a16a4c6fb52eab5000c4163f_9366/Predator_Mutator_20+_Firm_Ground_Cleats_Black_EF1563_01_standard.jpg", product_id: 3 })
image.save
image = Image.new({ url: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/7dbd5de455504b0ea49eab5000c42606_9366/Predator_Mutator_20+_Firm_Ground_Cleats_Black_EF1563_02_standard.jpg", product_id: 3 })
image.save
image = Image.new({ url: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/1b79473e8f0c4156902aab5000c43a68_9366/Predator_Mutator_20+_Firm_Ground_Cleats_Black_EF1563_05_standard.jpg", product_id: 3 })
image.save
image = Image.new({ url: "https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/84e832d3c35b4f1eb742ab3100a95fa2_9366/X_19+_Firm_Ground_Cleats_Blue_EG7137_01_standard.jpg", product_id: 4 })
image.save
image = Image.new({ url: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/9519a553bc254d5caa95ab3c00dca17e_9366/X_19+_Firm_Ground_Cleats_Blue_EG7137_HM2.jpg", product_id: 4 })
image.save
image = Image.new({ url: "https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/dd5ae39abe0548f780dcab3c00dca726_9366/X_19+_Firm_Ground_Cleats_Blue_EG7137_HM3.jpg", product_id: 4 })
image.save
image = Image.new({ url: "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_600,h_600/global/105755/01/sv01/fnd/PNA/fmt/png/FUTURE-5.1-NETFIT-FG/AG-Men's-Soccer-Cleats", product_id: 5 })
image.save
image = Image.new({ url: "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_900,h_900/global/105755/01/mod03/fnd/PNA/fmt/png/FUTURE-5.1-NETFIT-FG/AG-Men's-Soccer-Cleats", product_id: 5 })
image.save
image = Image.new({ url: "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_900,h_900/global/105755/01/fnd/PNA/fmt/png/FUTURE-5.1-NETFIT-FG/AG-Men's-Soccer-Cleats", product_id: 5 })
image.save
image = Image.new({ url: "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_600,h_600/global/105603/01/sv01/fnd/PNA/fmt/png/PUMA-ONE-5.1-Limited-Edition-FG/AG-Mens-Soccer-Cleats", product_id: 11 })
image.save
image = Image.new({ url: "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_900,h_900/global/105603/01/mod03/fnd/PNA/fmt/png/PUMA-ONE-5.1-Limited-Edition-FG/AG-Mens-Soccer-Cleats", product_id: 11 })
image.save
image = Image.new({ url: "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_900,h_900/global/105603/01/bv/fnd/PNA/fmt/png/PUMA-ONE-5.1-Limited-Edition-FG/AG-Mens-Soccer-Cleats", product_id: 11 })
image.save
image = Image.new({ url: "https://c.static-nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/5738710f-dd61-4e55-b887-198844b00daa/mercurial-superfly-7-elite-fg-firm-ground-soccer-cleat-FQXW4j.jpg", product_id: 14 })
image.save
image = Image.new({ url: "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/69e7de9d-3d7a-44b4-a68c-96104941f1c4/mercurial-superfly-7-elite-fg-firm-ground-soccer-cleat-FQXW4j.jpg", product_id: 14 })
image.save
image = Image.new({ url: "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/022bd049-f2ed-4e91-904c-e312e37ce30b/mercurial-superfly-7-elite-fg-firm-ground-soccer-cleat-FQXW4j.jpg", product_id: 14 })
image.save
