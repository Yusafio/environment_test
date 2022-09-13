# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'The Fellowship of the Ring'
    fill_in 'Author', with: 'J. R. R. Tolkien'
    fill_in 'Price', with: '9.99'
    fill_in 'Published', with: '1954-07-29'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('The Fellowship of the Ring')
    expect(page).to have_content('J. R. R. Tolkien')
    expect(page).to have_content('9.99')
    expect(page).to have_content('1954-07-29')
  end

end