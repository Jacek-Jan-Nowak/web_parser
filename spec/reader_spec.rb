require "./lib/parser"

RSpec.describe Parser::Reader do
    let (:reader) {described_class.new(path)}
    let(:path) {File.expand_path("../fixtures/rows.log", __FILE__)}

    describe '#rows' do
        subject(:rows) {reader.rows}

        let(:expected_rows) {["line 1", "line 2", "line 3"]}

        it {is_expected.to eql(expected_rows)}

        context "with invalid path" do
            let(:path) {"missing.log"}

            it "raises error" do
                expect {rows}.to raise_error(Parser::Error)
            end
        end
    end
end