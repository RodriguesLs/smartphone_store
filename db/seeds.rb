# frozen_string_literal: true

# Seeds minimal
manufacturers = %w[Samsung Xiaomi Asus LG]

smartphone_models = ['Awsome Phone', 'Basic smart', 'Expensive Thing', 'Cheap Droid']

release_years = %w[2015 2016 2017 2018]

Product.transaction do
  20_000.times do |i|
    smartphone_model = smartphone_models.sample
    manufacturer = manufacturers.sample
    release_year = release_years.sample
    Product.create(name: "#{smartphone_model} #{i}", manufacturer: manufacturer, release_year: release_year)
  end

  product = Product.order('created_at DESC').first

  2_000.times do |i|
    product.sells.create(date: (2000 - i).days.ago)
  end
end
