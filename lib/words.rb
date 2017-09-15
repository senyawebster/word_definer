class Words

  @@list = []

  def initialize(word, definition)
    @word = word
    @definition = definition
    # @id = @@list.legnth + 1
  end

  def self.all()
    @@list
  end

  def save
    @@list.push(self)
  end

  def self.search(id)
    search_id = id.to_i

    #for future use, not implemented yet
    @@list.each do |word|
      if search_id == word.id
        return word
      end
    end
  end

  #I'll also need a self.add

  #I'll also need a self.remove?

end
