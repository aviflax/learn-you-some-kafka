require 'rainbow'
require 'rouge'

# NB: this is duplicated in lesson.rb. We haven’t yet crossed the Rule of Three
# threshold, though, so this is fine.
def print_colorized(code)
  formatter = Rouge::Formatters::Terminal256.new
  lexer = Rouge::Lexers::Ruby.new
  puts formatter.format lexer.lex code
end

def run_fragment(path, bind)
  code = IO.read path
  puts Rainbow("\n###### About to test #{File.absolute_path(path)}:\n").color(:orange)
  sleep 1 # simulate ugly bags of mostly water
  print_colorized code
  sleep 1 # simulate ugly bags of mostly water
  bind.eval code
  puts Rainbow("\n###### #{path} Succeeded!!").color(:green)
end

def test_lesson(lesson_path)
  bind = binding

  # Important to run the lesson fragments in the lesson dir, because some of
  # them read data from local files.
  Dir.chdir(lesson_path) do
    Dir.glob('fragment_*.rb')
       .sort # It’s important to run the fragments in order.
       .each { |path| run_fragment path, bind }
  end

  # if no exception was raised, we’re good.
  nil
rescue StandardError
  puts Rainbow("\n###### Exception raised!!").color(:red)
  raise
end

# We need this because a few fragments do things in threads... if we didn’t set
# this, then by default those threads would just silently die. This way, the
# exception bubbles up and we can handle it like any other.
Thread.abort_on_exception = true

Dir['lesson_?']
  .sort # It’s important to test the lessons in order.
  .each { |lesson_path| test_lesson lesson_path }
