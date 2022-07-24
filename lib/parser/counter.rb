module Parser
    class Counter
        attr_accessor :total, :unique, :ips

        def initialize
            @total = 0
            @unique = 0
            @ips = {}
        end

        def add(row)
            self.total += 1
            unless ips[row.ip]
                self.unique += 1
                self.ips[row.ip] = true
            end
        end
    end
end