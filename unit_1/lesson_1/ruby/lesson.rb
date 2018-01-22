require 'rainbow'
require 'rouge'

# An interactive Ruby lesson.
module InteractiveLesson
  def self.print_colorized(fragment)
    formatter = Rouge::Formatters::Terminal256.new
    lexer = Rouge::Lexers::Ruby.new
    puts formatter.format lexer.lex fragment
  end

  def self.prompt(str)
    puts Rainbow("—— Press ⏎  to #{str} ——").background(:silver)
    STDIN.gets
  end

  def self.do_fragment(fragment, is_last)
    print_colorized fragment
    prompt 'execute the above code and see the results'
    eval fragment
    print "\n"
    prompt 'continue' unless is_last
  end

  def self.fragments
    paths = Dir.glob('fragment_*.rb').sort
    paths[0..-2].map { |path| [path, false] }
                .push([paths[-1], true])
  end

  def self.start
    print "\n"
    fragments.each { |path, is_last| do_fragment IO.read(path), is_last }
    congrats = '🎉 🎉 🎉  Congratulations, you’ve finished the lesson! 💪 💪 💪'
    puts Rainbow(congrats).background(:silver).bright
  end
end

InteractiveLesson.start
