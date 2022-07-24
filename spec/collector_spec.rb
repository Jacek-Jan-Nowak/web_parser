require "./lib/parser"

RSpec.describe Parser::Collector do
    let(:collector) {described_class.new(rows)}
    let(:rows) {
        [
            Parser::Row.new("/about", "126.318.035.038"),
            Parser::Row.new("/about", "126.318.035.038"),
            Parser::Row.new("/about", "555.576.836.194"),
            Parser::Row.new("/home", "126.318.035.038"),
            Parser::Row.new("/home", "126.318.035.038"),
        ]
    }

    describe "#group" do 
        subject(:group) {collector.group}

        it "group rows by their path" do
            expect(group.keys).to match_array(["/home", "/about"])
        end

        it "stores total views" do
            expect(group.fetch("/about").total).to eql(3)
        end
    end
end