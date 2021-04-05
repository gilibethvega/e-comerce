require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'I can create categories' do
    category = Category.create(name: 'TV')
    expect(category).to be_instance_of(Category)
  end
  it 'I cant create categories with same name' do
    category1 = Category.create(name: 'TV')
    category2 = Category.create(name: 'TV')
    expect(category2).to_not be true
  end
  it 'I cant create categories with blank name' do
    category = Category.create(name: '')
    expect(category).to_not be true
  end
  it 'category can have many children categories' do
    category_father = Category.create(id: 1, name: 'Principal Category')
    children1 = Category.create(name: 'Secondary Category', category_id: '1')
    children2 = Category.create(name: 'Other Secondary Category', category_id: '1')

    expect(category_father.children_categories.count).to eq(2)
  end
  it 'category can have one parent category' do
    category_father = Category.create(id: 1, name: 'Principal Category')
    children1 = Category.create(name: 'Secondary Category', category_id: '1')

    expect(children1.parent_category.name).to eq('Principal Category')
  end
end

