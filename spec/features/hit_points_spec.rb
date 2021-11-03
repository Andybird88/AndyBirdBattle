require './lib/player'
feature 'view hit points' do
    scenario 'see Player 2 hit points' do
        sign_in_and_play
      expect(page).to have_content 'Dean: 60HP'
    end
end