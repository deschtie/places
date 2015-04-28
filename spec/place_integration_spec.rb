require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe("the 'spot' path", {:type => :feature}) do
  it('takes user input and adds it to a list or array') do
    visit('/')
    fill_in('description', :with => 'LA, CA')
    click_button('Add spot')
    expect(page).to have_content('The spot has been added to the list')
  end
end
