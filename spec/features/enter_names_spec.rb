feature 'Enter names' do
    scenario 'submitting names' do
        visit('/')
        fill_in :player_1_name, with: 'Nate Diaz'
        fill_in :player_2_name, with: 'Jorge Masvidal'
        click_button 'Submit'
        expect(page).to have_content 'Nate Diaz vs. Jorge Masvidal'
    end
end