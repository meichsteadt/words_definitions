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

describe('root to add word path', {:type => :feature}) do
  it('displays add word form on link click') do
    visit('/')
    click_link('Add word')
    expect(page).to have_content('New word')
  end
end

describe('submit word path', {:type => :feature}) do
  it('displays add word form on link click') do
    visit('/words/new')
    fill_in('word', :with => 'coder')
    select('noun', :from => 'type')
    click_button('Submit')
    expect(page).to have_content('You have successfully added a word')
  end
end
