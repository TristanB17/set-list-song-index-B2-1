RSpec.describe Song do
  describe "Validations" do
    it "is invalid without a title" do
      song = Song.new(length: 123, play_count: 2)

      expect(song).to_not be_valid
    end
    it "is invalid without a length" do
      song = Song.new(title: "BACK2BACK", play_count: 34)

      expect(song).to_not be_valid
    end
  end
  describe 'Class methods' do
    describe '.total_play_count' do
      it 'returns total play count for all songs' do
        Song.create(title: 'Song 1', length: 180, play_count: 3)
        Song.create(title: 'Song 2', length: 220, play_count: 4)

        expect(Song.total_play_count).to eq(7)
      end
    end
    describe '.average_play_count' do
      it 'gets the average play_count of all songs' do
        Song.create(title: 'Song 1', length: 500, play_count: 4)
        Song.create(title: 'Song 2', length: 500, play_count: 5)
        Song.create(title: 'Song 3', length: 500, play_count: 6)

        expect(Song.average_play_count).to eq(5)
      end
    end
  end
end
