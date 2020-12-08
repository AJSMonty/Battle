require './app.rb'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
      visit('/')
      expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Adding Players' do
  scenario 'Page renders form' do
    visit('/')
    within('form') do
      fill_in 'player1', with: 'Zeen'
      fill_in 'player2', with: 'AJ'
    end
    click_button('Submit')
    expect(page).to have_content 'Welcome player 1: Zeen'
    expect(page).to have_content 'Welcome player 2: AJ'
  end
end