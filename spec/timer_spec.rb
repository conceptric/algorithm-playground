require_relative '../lib/timer.rb'

describe "Timer" do

  before(:each) do
    @timer = Timer.new
  end

  it "resets the timer when initialised" do
    @timer.started_at.should be_nil
    @timer.stopped_at.should be_nil
  end

  it "records a start timestamp" do
    @timer.start
    @timer.started_at.should_not be_nil
    @timer.started_at.should be_instance_of(Time)
  end                                      

  it "records a stop timestamp" do
    @timer.stop
    @timer.stopped_at.should_not be_nil
    @timer.stopped_at.should be_instance_of(Time)
  end

  describe "Elapsed Time" do

    it "is a Float" do
      @timer.elapsed_time.should be_instance_of(Float)
    end

    it "defaults to zero" do
      @timer.elapsed_time.should_not be_nil
      @timer.elapsed_time.should eql(0.0)
    end

    it "is the difference between Start and Stop times" do
      start = Time.now
      stop = start + (1/1000)
      expected = stop - start      
      @timer.stub(:started_at).and_return(start)
      @timer.stub(:stopped_at).and_return(stop)
      @timer.elapsed_time.should eql(expected)
    end    
  end
  
  it "resets the timer" do             
    @timer.reset_timer
    @timer.started_at.should be_nil
    @timer.stopped_at.should be_nil
    @timer.elapsed_time.should eql(0.0)
  end

end