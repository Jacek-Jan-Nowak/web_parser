module Parser
    class Router
        def initialize(file_path)
            @file_path = file_path
        end

        def format
            Formatter.new(collected_data).format
        end

        private

        def collected_data
            Collector.new(splitted_data).group
        end

        def splitted_data
            Splitter.new(read_data).splitted_rows
        end

        def read_data
            Reader.new(@file_path).rows
        end
    end
end