feature 'show home page' do
  scenario 'go to / and expect the greeting' do
    visit '/'
    expect(page).to have_content('Bonjour!')
  end
end
