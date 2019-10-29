feature 'Attacking' do
    scenario 'attack Player 2' do
        sign_in_and_play
        click_button 'Attack'
        click_link 'OK'
        expect(page).not_to have_content 'Jorge Masvidal: 60HP'
        expect(page).to have_content 'Jorge Masvidal: 50HP'
    end
end