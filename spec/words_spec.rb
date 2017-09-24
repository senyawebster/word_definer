require('rspec')
require('word')
require('pry')

describe('Word') do
  before() do
    Word.clear()
  end

  describe('#item') do
    it('returns the item (name) of an inputted word') do
      word = Word.new('Frog', 'A small green creature')
      expect(word.item).to eq('Frog')
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
    it("saves a word's item(name) & definition") do
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
    it('adds a definition to an item that already has one') do
      word = Word.new('Fox', 'A medium red creature')
      word.save()
      word.add_definition('A sneaky creature')
      expect(word.definition).to eq(['A medium red creature', 'A sneaky creature'])
    end
  end

end
