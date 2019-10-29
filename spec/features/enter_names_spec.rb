feature 'Enter names' do
    scenario 'submitting names' do
        visit('/')
        fill_in :player_1_name, with: 'Jade'
        fill_in :player_2_name, with: 'Stu'
        click_button 'Submit'
        expect(page).to have_content 'Jade vs. Stu'
    end
end