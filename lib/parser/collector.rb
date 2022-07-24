module Parser
    class Collector
        def initialize(rows)
            @rows = rows
        end

        def group
            @rows.each_with_object(Sorter.new) do |row, collection|
                collection[row.path] ||= Counter.new
                collection[row.path].add(row)  
            end
        end
    end
end