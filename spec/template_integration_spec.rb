require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('/', {:type => :feature}) do
  it('displays index page on root') do
    visit('/')
    expect(page).to have_content('Add word')
  end
end

describe('/words/new', {:type => :feature}) do
  it('displays add word form on link click') do
    visit('/')
    click_link('Add word')
    expect(page).to have_content('New word')
  end
end

describe('post /word', {:type => :feature}) do
  it('displays add word form on link click') do
    visit('/words/new')
    fill_in('word', :with => 'coder')
    select('noun', :from => 'type')
    click_button('Submit')
    expect(page).to have_content('You have successfully added a word')
  end
end

describe('/clear', {:type => :feature}) do
  it('displays add word form on link click') do
    visit('/words/new')
    fill_in('word', :with => 'coder')
    select('noun', :from => 'type')
    click_button('Submit')
    click_link('View words')
    click_link('Delete all words')
    expect(page).to have_content('Delete all words')
  end
end

describe('/words', {:type => :feature}) do
  it('displays add word form on link click') do
    visit('/words/new')
    fill_in('word', :with => 'coder')
    select('noun', :from => 'type')
    click_button('Submit')
    click_link('View words')
    expect(page).to have_content('coder')
  end
end

describe('/words/:id/new', {:type => :feature}) do
  it('displays add word form on link click') do
    visit('/words')
    click_link('Add word')
    expect(page).to have_content('New word')
  end
end

describe('words/:id', {:type => :feature}) do
  it('displays add word form on link click') do
    visit('/words')
    click_link('coder')
    expect(page).to have_content('Add definition')
  end
end

describe('words/:id/new', {:type => :feature}) do
  it('displays add word form on link click') do
    visit('/words/1')
    click_link('Add definition')
    expect(page).to have_content('New definition')
  end
end

describe('post /def', {:type => :feature}) do
  it('adds a definition to a word') do
    visit('/words/1/new')
    fill_in('definition', :with => 'magical computer sorcerer')
    click_button('Submit')
    expect(page).to have_content('You have successfully added a definition')
  end
end

describe('/a_z', {:type => :feature}) do
  it('alphabetizes the words a to z') do
    visit('/words/new')
    fill_in('word', :with => 'bro')
    select('noun', :from => 'type')
    click_button('Submit')
    click_link('View words')
    click_link('Sort a-z')
    expect(page).to have_content('bro coder')
  end
end

describe('/a_z', {:type => :feature}) do
  it('alphabetizes the words a to z') do
    visit('/words/new')
    fill_in('word', :with => 'dro')
    select('noun', :from => 'type')
    click_button('Submit')
    click_link('View words')
    click_link('Sort z-a')
    expect(page).to have_content('dro coder')
  end
end

describe('/all', {:type => :feature}) do
  it('alphabetizes the words a to z') do
    visit('/words')
    click_link('View all definitions')
    expect(page).to have_content('magical computer sorcerer')
  end
end
