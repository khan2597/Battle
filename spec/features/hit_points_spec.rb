feature 'View hit points' do
    scenario 'see Player 2 hit points' do
        visit('/')
        fill_in :player_1_name, with: 'Nate Diaz'
        fill_in :player_2_name, with: 'Jorge Masvidal'
        click_button 'Submit'
        expect(page).to have_content 'Jorge Masvidal: 60HP'
    end
end