# location: spec/feature/integration_spec.rb
require 'rails_helper'

def select_date(date, options = {})
    field = options[:from]
    base_id = find(:xpath, ".//label[contains(.,'#{field}')]")[:for]
    year, month, day = date.split(',')
    select year,  :from => "#{base_id}_1i"
    select month, :from => "#{base_id}_2i"
    select day,   :from => "#{base_id}_3i"
  end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'The Fellowship of the Ring'
    fill_in 'Author', with: 'J. R. R. Tolkien'
    fill_in 'Price', with: '9.99'
    select_date("1954,July,29", :from => "Published")
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('The Fellowship of the Ring')
    expect(page).to have_content('J. R. R. Tolkien')
    expect(page).to have_content('9.99')
    expect(page).to have_content('1954-07-29')
  end

end