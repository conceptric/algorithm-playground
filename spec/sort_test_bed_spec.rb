require_relative '../lib/sort_test_bed.rb'

describe "SortTestBed" do

	it "takes an array of data to be sorted" do
    SortTestBed.new([])
  end

  it "returns the original data when asked" do
    SortTestBed.new([3,1]).unsorted.should eql([3,1])
  end
  
  it "uses the insertion sort method of IntegerArraySort" do
    IntegerArraySort.should_receive(:insertion_sort).once.
    with([2,1])
    SortTestBed.new([2,1]).insertion_sorted
  end

  describe "Timer" do

    before(:each) do
      @test_bed = SortTestBed.new([2,1])
      @test_bed.start_time.should be_nil
      @test_bed.finish_time.should be_nil
      @test_bed.insertion_sorted      
    end

    it "records a timestamp when the sort method is called" do
      @test_bed.start_time.should_not be_nil
      @test_bed.start_time.should be_instance_of(Time)
    end                                      

    it "records a timestamp when the sort method is returns" do
      @test_bed.finish_time.should_not be_nil
      @test_bed.finish_time.should be_instance_of(Time)
    end
    it "returns the sort duration in milliseconds"
    
  end
  
end
