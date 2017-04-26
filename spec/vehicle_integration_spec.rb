require "capybara/rspec"
require "./app"
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the application path for vehicles', {:type => :feature} do
  it 'processes the user entry and stores the vehicle entered' do
    visit '/'
    click_link 'Add New Vehicle'
    visit '/vehicles/new'
    fill_in 'make', :with => 'Toyota'
    fill_in 'model', :with => 'Prius'
    fill_in 'year', :with => '2000'
    click_button 'Add Vehicle'
    visit '/vehicles'
    expect(page).to have_content('Prius')
  end
end
