RSpec.describe 'a visitor' do
  context 'visiting /' do
    it 'should see a welcome message' do
      visit '/'

      within('#greeting') do
        expect(page).to have_content("Welcome!")
      end
    end
  end
  context 'visiting /songs' do
    it 'should see a list of songs' do
      Song.create(title: "Don't Stop Believing", length: 251, play_count: 760847)

      visit '/songs'

      expect(page).to have_content("Don't Stop Believing")
    end
  end
end
