require('rspec')
require('word')
require('pry')

describe('Word') do
  before() do
    Word.clear()
  end

  describe('#name') do
    it('returns the name of an inputted word') do
      word = Word.new('Frog', 'A small green creature')
      expect(word.name).to eq('Frog')
    end
  end

  describe('#definition') do
    it('returns the definition of an inputted word') do
      word = Word.new('Frog', 'A small green creature')
      expect(word.definition).to eq(['A small green creature'])
    end
  end

  describe('.all') do
    it('starts out empty') do
      expect(Word.all).to eq([])
    end
  end

  describe('#save') do
    it("saves a word's name(name) & definition") do
      word = Word.new('Toad', 'A small brown creature')
      word.save()
      expect(Word.all).to eq([word])
    end
  end

  describe('.clear') do
    it('clears @@list') do
      word = Word.new('Toad', 'A small brown creature')
      word.save()
      Word.clear()
      expect(Word.all).to eq([])
    end
  end

  describe('#add_definition') do
    it('adds a definition to an name that already has one') do
      word = Word.new('Fox', 'A medium red creature')
      word.save()
      word.add_definition('A sneaky creature')
      expect(word.definition).to eq(['A medium red creature', 'A sneaky creature'])
    end
  end

  describe('.find') do
    it('finds a word by ID') do
      word1 = Word.new('Tiger', 'A big orange creature')
      word1.save()
      word2 = Word.new('Whale', 'A huge blue creature')
      word2.save()
      expect(Word.find(1)).to eq(word1)
      expect(Word.find(2)).to eq(word2)
    end
  end

end
