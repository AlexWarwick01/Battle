require "capybara/rspec"

feature 'Testing Infrastructure' do
  scenario 'displays above string' do
    visit '/'
    expect(page).to have_content("Testing infrastructure working")
  end
end
feature 'Adding Player Names' do
  scenario 'recieve input for names' do
    sign_in_and_play
    expect(page).to have_content("Welcome Alex & Tuyet")
  end
end
feature 'hitpoint 1 please' do
  scenario 'displays p1 hps' do
    visit('/play')
    expect(page).to have_content("Player 1 Health :: 50")
  end
end
feature 'hitpoint 2 please' do
  scenario 'displays p2 hps' do
    visit('/play')
    expect(page).to have_content("Player 2 Health :: 50")
  end
end
# feature 'damage 1 please' do
#   scenario 'displays p2 hps' do
#     visit('/play')
#     expect(page).to have_content("Player 2 Health :: 50")
#   end
# end
feature 'damage 2 please' do
  scenario 'displays p2 hps' do
    visit('/play')
    expect(page).to have_content("Player 2 Health :: 50")
  end
end
