require 'rspec'
require_relative 'fog_creek'

describe FogCreek do

    describe "example case" do
      it "does the thing" do
        expected_result = 680131659347
        test_input = 'leepadg'
        fog_creek = FogCreek.new
        actual_result = fog_creek.hash_method(test_input)
        expect(actual_result).to eq(expected_result)
      end

      it "does the reverse thing" do
        expected_string = 'leepadg'
        test_input = 680131659347
        fog_creek = FogCreek.new
        actual_string = fog_creek.reverse_hash(test_input)
        expect(actual_string).to eq(expected_string)
      end

      it "gives the example word" do
        expected_string = "promenade"
        test_input = 945924806726376
        fog_creek = FogCreek.new
        actual_string = fog_creek.reverse_hash(test_input)
        expect(actual_string).to eq(expected_string)
      end

      it "just to check example word" do
        expected_result = 945924806726376
        test_input = 'promenade'
        fog_creek = FogCreek.new
        actual_result = fog_creek.hash_method(test_input)
        expect(actual_result).to eq(expected_result)
      end

    end

end
