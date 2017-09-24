require('rspec')
require('word')
require('pry')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#item') do
    it('returns the item (name) of an inputted word') do
      test_word = Word.new('Frog', 'A small green creature')
      expect(test_word.item).to eq 'Frog'
    end
  end

  # descibe('definition') do
  #   it('returns the definition of an inputted word') do
  #     test_word = Word.new({:item => 'Frog', :definition => 'A small green creature'})
  #     expect(test_word.item).to eq 'A small green creature'
  #   end
  # end

  # describe('.all') do
  #   it('starts out empty') do
  #     expect(Word.all).to eq([])
  #   end
  # end

  # describe('#save') do
  #   it("saves a user-inputted word and definition and adds it to @@list to be displayed") do
  #   end
  # end
end
