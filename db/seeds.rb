puts "Seeding products..."

Product.destroy_all

products = [
  {
    name: "Gold Necklace",
    description: "This elegant 18k gold necklace features a delicate yet durable chain, perfect for everyday wear or special occasions. The polished finish adds a subtle shine, making it a timeless addition to any jewelry collection.",
    price: 220
  },
  {
    name: "Silver Bracelet",
    description: "Crafted from high-quality sterling silver, this minimalist bracelet is designed for a sleek and modern look. Its adjustable clasp ensures a comfortable fit, making it an ideal piece for layering or wearing solo.",
    price: 80
  },
  {
    name: "Diamond Ring",
    description: "This classic diamond ring features a dazzling 0.5-carat solitaire set in a white gold band. Its elegant design makes it a perfect engagement ring or a meaningful gift for a loved one.",
    price: 5330
  },
  {
    name: "Pearl Earrings",
    description: "Timeless and sophisticated, these pearl earrings showcase lustrous freshwater pearls hanging from sterling silver hooks. Whether for a wedding or a casual day out, they bring a touch of class to any outfit.",
    price: 130
  },
  {
    name: "Sapphire Pendant",
    description: "A deep blue sapphire stone set in a delicate white gold pendant, this piece exudes luxury and elegance. The gemstone is cut to perfection, catching the light beautifully with every movement.",
    price: 310
  },
  {
    name: "Gold Hoop Earrings",
    description: "These trendy 14k gold hoop earrings are a must-have for any jewelry lover. Lightweight and comfortable, they add a touch of glamour without being overpowering, making them perfect for both casual and formal wear.",
    price: 150
  },
  {
    name: "Rose Gold Bangle",
    description: "Designed with a chic and modern aesthetic, this rose gold bangle features an intricate engraved pattern. Its smooth, polished finish and lightweight design make it perfect for all-day wear.",
    price: 100
  },
  {
    name: "Amethyst Ring",
    description: "This stunning amethyst ring showcases a deep purple gemstone set in a vintage-inspired silver band. A beautiful statement piece, it combines elegance with a touch of bohemian charm.",
    price: 230
  },
  {
    name: "Topaz Bracelet",
    description: "Featuring radiant blue topaz stones set in sterling silver links, this bracelet is both eye-catching and sophisticated. Its secure clasp ensures a perfect fit, making it a great choice for any occasion.",
    price: 94
  },
  {
    name: "Opal Necklace",
    description: "This dainty opal necklace features a mesmerizing opalescent stone set on a delicate gold chain. The play of colors in the opal makes it a unique and enchanting accessory.",
    price: 170
  }
]

products.each do |product|
  Product.create!(product)
end

puts "Seeding completed!"
