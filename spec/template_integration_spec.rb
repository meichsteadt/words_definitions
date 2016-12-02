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

describe('submit word path', {:type => :feature}) do
  it('displays add word form on link click') do
    Word.clear
    visit('/words/new')
    fill_in('word', :with => 'coder')
    select('noun', :from => 'type')
    click_button('Submit')
    click_link('View words')
    click_link('Delete all words')
    expect(page).to have_content('Delete all words')
  end
end

describe('submit word path', {:type => :feature}) do
  it('displays add word form on link click') do
    Word.clear
    visit('/words/new')
    fill_in('word', :with => 'coder')
    select('noun', :from => 'type')
    click_button('Submit')
    click_link('View words')
    expect(page).to have_content('coder')
  end
end

describe('root to add word path', {:type => :feature}) do
  it('displays add word form on link click') do
    visit('/words')
    click_link('Add word')
    expect(page).to have_content('New word')
  end
end

describe('words to word path', {:type => :feature}) do
  it('displays add word form on link click') do
    visit('/words')
    click_link('coder')
    expect(page).to have_content('Add definition')
  end
end

describe('word to add definition path', {:type => :feature}) do
  it('displays add word form on link click') do
    visit('/words/1')
    click_link('Add definition')
    expect(page).to have_content('New definition')
  end
end

describe('add definition submit path', {:type => :feature}) do
  it('adds a definition to a word') do
    visit('/words/1/new')
    fill_in('definition', :with => 'magical computer sorcerer')
    click_button('Submit')
    expect(page).to have_content('You have successfully added a definition')
  end
end

describe('add definition submit path', {:type => :feature}) do
  it('adds a definition to a word') do
    visit('/words/1/new')
    fill_in('definition', :with => 'someone who exchanges typing for coffee')
    click_button('Submit')
    click_link('View definitions')
    expect(page).to have_content('someone who exchanges typing for coffee')
  end
end
