require "./lib/parser"

RSpec.describe Parser::Splitter do
    let(:splitter) {described_class.new(rows)}
    let(:rows) {
        [
        "/contact 543.910.244.929",
        "/about 126.318.035.038"
        ]
    }
    describe "#splitted_rows" do
        subject { splitter.splitted_rows }

        let(:expected_splitted_rows) {
            [
                Parser::Row.new("/contact", "543.910.244.929"),
                Parser::Row.new("/about", "126.318.035.038")
            ]
        }

        it {is_expected.to eql(expected_splitted_rows)}
    end
end