module Parser
    class Splitter
        def initialize(rows)
            @rows = rows
        end

        def splitted_rows
            @rows.map do |row|
                path, ip = row.split
                Row.new(path, ip)
            end
        end
    end
end