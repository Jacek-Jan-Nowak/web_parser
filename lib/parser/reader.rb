module Parser
    class Reader
        def initialize(path)
            @path = path
        end

        def rows
            handle.each.map do |line|
                line.chomp
            end
        end

        private

        def handle
            File.open(@path, "r")
            rescue Errno::ENOENT, Errno::EACCESS => e
                raise Parser::Error, e.message
        end
    end
end