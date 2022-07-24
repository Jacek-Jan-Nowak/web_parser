require "./lib/parser"

RSpec.describe Parser::Router do
    let(:router) {described_class.new("some/file")}

    describe "#format" do
        subject {router.format}

        let(:reader) {
            double(Parser::Reader, rows: [ "/contact 543.910.244.929","/about 126.318.035.038"])
        }

        before do
            allow(Parser::Reader).to receive(:new).with("some/file").and_return(reader)
        end

        it {is_expected.to include("Entries by total views")}
    end
end