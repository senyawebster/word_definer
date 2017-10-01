class Word
  @@list = []
  attr_reader(:id)
  attr_accessor(:name, :definition)

  def initialize(name, definition)
    @name = name
    @definition = [definition]
    @id = @@list.length + 1
  end

  def self.all()
    @@list
  end

  def save
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

  def add_definition(definition)
    @definition.push(definition)
  end

  def self.find(id)
    word_id = id.to_i()
    @@list.each do |x|
      if x.id == word_id
        return x
      end
    end
  end

  # def self.list()
  #   @definition
  # end

  #
  # def self.search(id)
  #   search_id = id.to_i
  #
  #   #for future use, not implemented yet
  #   @@list.each do |word|
  #     if search_id == word.id
  #       return word
  #     end
  #   end
  # end

  #I'll also need a self.add

  #I'll also need a self.remove?

end
