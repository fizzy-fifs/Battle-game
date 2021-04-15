
feature 'Enter names' do
    scenario 'name form' do
        sign_in_and_play
        expect(page).to have_content 'John vs. Peter'
    end
end