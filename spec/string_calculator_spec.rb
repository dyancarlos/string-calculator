require "string_calculator"

describe StringCalculator do

  describe ".add" do
    context "given an empty string" do
      it "should return zero" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "given 4" do
      it "should return 4" do
        expect(StringCalculator.add("4")).to eq(4)
      end
    end

    context "given 10" do
      it "should return 10" do
        expect(StringCalculator.add("10")).to eq(10)
      end
    end

    context "with two numbers" do
      context "given 2,4" do
        it 'should return 6' do
          expect(StringCalculator.add("2,4")).to eq(6)
        end
      end

      context "given 17,100" do
        it 'should return 117' do
          expect(StringCalculator.add("17,100")).to eq(117)
        end
      end
    end

    context "with three numbers" do
      context "given 2,8,12" do
        it 'should return 22' do
          expect(StringCalculator.add("2,8,12")).to eq(22)
        end
      end

      context "given 10,42,30" do
        it 'should return 82' do
          expect(StringCalculator.add("10,42,30")).to eq(82)
        end
      end
    end

  end
end
