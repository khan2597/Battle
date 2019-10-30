feature 'Attacking' do
    scenario 'be attacked by Player 2' do
        sign_in_and_play
        click_button 'Attack'
        click_button 'OK'
        click_button 'Attack'
        expect(page).to have_content 'Jorge Masvidal attacked Nate Diaz'
    end
    
    scenario 'attack Player 2' do
        sign_in_and_play
        click_button 'Attack'
        click_button 'OK'
        expect(page).not_to have_content 'Jorge Masvidal: 60HP'
        expect(page).to have_content 'Jorge Masvidal: 50HP'
    end

    scenario 'reduce Player 1 HP by 10' do
        sign_in_and_play
        click_button 'Attack'
        click_button 'OK'
        click_button 'Attack'
        click_button 'OK'
        expect(page).not_to have_content 'Nate Diaz: 60HP'
        expect(page).to have_content 'Nate Diaz: 50HP'
      end
end