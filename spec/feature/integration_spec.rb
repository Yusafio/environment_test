# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'The Fellowship of the Ring'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('The Fellowship of the Ring')
  end

RSpec.describe 'Setting the author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Author', with: 'J. R. R. Tolkien'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J. R. R. Tolkien')
  end
RSpec.describe 'Setting the price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Price', with: '9.99'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('9.99')
  end
RSpec.describe 'Setting the published date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'PublishedDate', with: '07/29/1954'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('07/29/1954')
  end
end