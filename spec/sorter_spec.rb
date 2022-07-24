require "./lib/parser"

RSpec.describe Parser::Sorter do
    let(:result) {described_class[grouped_rows]}
    let(:grouped_rows) {
        {
            "/about" => counter1,
            "/contact" => counter2,
            "/home" => counter3
        }
    }
    let(:counter1) {double(Parser::Counter, unique: 5, total: 5)}
    let(:counter2) {double(Parser::Counter, unique: 10, total: 25)}
    let(:counter3) {double(Parser::Counter, unique: 2, total: 150)}

    describe "#sort_by_total" do
        subject {result.sort_by_total}

        let(:expected_sorter_rows) {
            [
                ["/home", counter3],
                ["/contact", counter2],
                ["/about", counter1]
            ]
        }

        it {is_expected.to eql(expected_sorter_rows)}
    end

    describe "#sort_by_unique" do
        subject {result.sort_by_unique}

        let(:expected_sorter_rows) {
            [
                ["/contact", counter2],
                ["/about", counter1],
                ["/home", counter3],
            ]
        }

        it {is_expected.to eql(expected_sorter_rows)}
    end
end