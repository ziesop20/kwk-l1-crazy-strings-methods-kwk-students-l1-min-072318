
require 'spec_helper'

describe "crazy_string.rb" do

  describe "#crazy_strings" do

      it 'accepts 2 arguments' do
        expect { crazy_strings }.to raise_error(ArgumentError), 'crazy_strings should accept 2 arguments'
        expect { crazy_strings(1) }.to raise_error(ArgumentError), 'crazy_strings should accept 2 arguments'
        expect { crazy_strings(1,2) }.to_not raise_error(ArgumentError)
      end


      it "reverses the first string argument" do
        expect(crazy_strings("APPLE", "")).to eq("ELPPA").or(be == "ELPPA ")
      end

      it "upcases the first string argument" do
        expect(crazy_strings("aa", "")).to eq("AA").or(be == "AA ")
      end

      it "swaps the case of the second string argument from downcase to upcase" do
        expect(crazy_strings("AA", "bb")).to eq("AA BB")
      end

      it "swaps the case of the second string argument from upcase to downcase" do
        expect(crazy_strings("AA", "BB")).to eq("AA bb")
      end

      it "substitutes S for Z" do
        expect(crazy_strings("AA", "S")).to eq("AA z")
      end

  end
end
