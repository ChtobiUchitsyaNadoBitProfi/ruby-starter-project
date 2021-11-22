require_relative 'context'
require_relative 'states/input'
require_relative 'states/exit'

class Application
  def run
    context = Context.new(Input.new)
    context.do until context.state.is_a? Exit
  end
end
