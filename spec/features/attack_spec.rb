feature 'Attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dean attacked Andy'
  end

  scenario 'reduce player2 hp by 10' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).not_to have_content 'Andy: 60HP'
      expect(page).to have_content 'Andy: 50HP'
  end
end