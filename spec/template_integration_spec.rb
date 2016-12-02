require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('root path', {:type => :feature}) do
  it('displays index page on root') do
    visit('/')
    expect(page).to have_content('Add word')
  end
end
