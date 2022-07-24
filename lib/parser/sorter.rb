module Parser
    class Sorter < Hash
        def sort_by_total
            sort_by { |path, views| -views.total}
        end

        def sort_by_unique
            sort_by { |path, views| -views.unique}
        end
    end
end