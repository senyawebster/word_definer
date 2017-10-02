require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_excepeptions, false)

describe('word', {:type => :feature}) do
  it('adds a word to the list displayed on page') do
    visit('/')
    fill_in('word', :with => 'cheetah')
    click_button('Submit your Word')
    expect(page).to have_content('cheetah')
  end

  it('takes the user to the word/:id page') do
    visit('/')
    click_link('cheetah')
    expect(page).to have_content('cheetah')
  end

  it('adds multiple definitions to a word on its word/:id page') do
    visit('/')
    click_link('cheetah')
    fill_in('definition', :with => 'a fast yellow creature')
    click_button('Add')
    fill_in('definition', :with => 'a wild African cat')
    click_button('Add')
    expect(page).to have_content('cheetah')
    expect(page).to have_content('a fast yellow creature')
    expect(page).to have_content('a wild African cat')
  end
end
