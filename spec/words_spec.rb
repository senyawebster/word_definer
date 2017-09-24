require('rspec')
require('word')
require('pry')

describe('Word') do
  before() do
    Word.clear()
  end

  describe('#item') do
    it('returns the item (name) of an inputted word') do
      test_word = Word.new('Frog', 'A small green creature')
      expect(test_word.item).to eq 'Frog'
    end
  end

  describe('#definition') do
    it('returns the definition of an inputted word') do
      test_word = Word.new('Frog', 'A small green creature')
      expect(test_word.definition).to eq 'A small green creature'
    end
  end

  describe('.all') do
    it('starts out empty') do
      expect(Word.all).to eq([])
    end
  end

  describe('#save') do
    it("saves a word's item(name) & definition") do
      test_word = Word.new('Toad', 'A small brown creature')
      test_word.save()
      expect(Word.all).to eq([test_word])
    end
  end
end
