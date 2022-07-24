require "./lib/parser"

RSpec.describe Parser::Counter do
    let(:counter) {described_class.new}

    describe "#add" do
        subject(:add_row) {counter.add(row)}
        let(:row) { Parser::Row.new("/about", "126.318.035.038")}

        it "increments total views" do
            expect {add_row}.to change {counter.total}.by(1)
        end

        it "increments unique views" do
            expect {add_row}.to change {counter.unique}.by(1)
        end

        context "with existing ip" do
            before do
                counter.ips["126.318.035.038"] = true
            end

            it "does not increment unique views" do
                expect {add_row}.to_not change {counter.unique}
            end
        end
    end
end