require 'spec_helper'

describe Intake do

  let(:intake) { FactoryGirl.create(:intake) }
  let(:pq1) { FactoryGirl.create(:pain_quality, :id=>1) }

  describe ".create_pain_qualities" do

    before(:each) do
      intake.pain_qualities = []
    end

    context 'linking pain quality params to model' do

      it 'should associate pain_quality to intake' do
        PainQuality.stub(:find).and_return(pq1)
        intake.create_pain_qualities({'Pain_quality_1'=>1})
        intake.pain_qualities.should == [pq1]
      end

      it 'should not make association if no pain quality params' do
        PainQuality.stub(:find).and_return(nil)
        intake.create_pain_qualities({'dog'=>1})
        intake.pain_qualities.should == []
      end

    end

  end

end
