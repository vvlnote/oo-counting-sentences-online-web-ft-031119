require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    s_arr = self.split(" ")
    s_count = 0
    s_arr.each do |s|
      if s.sentence? || s.question? || s.exclamation?
        s_count += 1
      end
    end
    s_count
  end
end