module Parser
    class Formatter
        def initialize(sorter)
            @sorter = sorter
        end

        def format
            <<~EOF
            Entries by total views:
            #{total_views}

            Entries by unique views:
            #{unique_views}
            EOF
        end

        private

        def total_views
            @sorter.sort_by_total.map do |path,counter|
                "#{path} #{counter.total} visits"
            end.join("\n")
        end

        def unique_views
            @sorter.sort_by_unique.map do |path,counter|
                "#{path} #{counter.unique} unique visits"
            end.join("\n")
        end
    end
end
