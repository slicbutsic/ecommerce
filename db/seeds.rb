# Clear existing data
Category.destroy_all
Product.destroy_all

# Create categories
electronics = Category.create!(name: "Electronics", description: "Gadgets and devices")
clothing = Category.create!(name: "Clothing", description: "Apparel and accessories")
books = Category.create!(name: "Books", description: "Various genres of literature")

# Create products
Product.create!([
  {
    name: "Smartphone",
    description: "Latest model with advanced features",
    price: 699.99,
    stock_quantity: 50,
    category: electronics
  },
  {
    name: "Laptop",
    description: "Powerful and lightweight",
    price: 1299.99,
    stock_quantity: 30,
    category: electronics
  },
  {
    name: "T-shirt",
    description: "Comfortable cotton t-shirt",
    price: 19.99,
    stock_quantity: 100,
    category: clothing
  },
  {
    name: "Jeans",
    description: "Classic denim jeans",
    price: 49.99,
    stock_quantity: 75,
    category: clothing
  },
  {
    name: "Novel",
    description: "Bestselling fiction book",
    price: 14.99,
    stock_quantity: 200,
    category: books
  },
  {
    name: "Cookbook",
    description: "Collection of gourmet recipes",
    price: 24.99,
    stock_quantity: 60,
    category: books
  }
])

puts "Seed data created successfully!"
