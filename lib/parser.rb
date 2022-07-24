require_relative "parser/reader"
require_relative "parser/row"
require_relative "parser/splitter"
require_relative "parser/counter"
require_relative "parser/collector"
require_relative "parser/sorter"
require_relative "parser/formatter"
require_relative "parser/router"

module Parser
    class Error < StandardError; end
end


