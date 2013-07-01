require 'spec_helper'

describe Patient do
  
  before(:each) do 
   @patient = Patient.create(:first_name=>'dan', :last_name=>'bigs', :email=>'bigs@yahoo.com', :gender=>'1',
      :height=>'100', :weight=>'100', :ssn=>111111111, :marital_status=>'single', :dob=>DateTime.now)
  end

  describe '.search' do

    context 'searching for matching patients' do
      
      it 'should return empty array if no matching patients' do
        Patient.search('123121234', '').should == []
      end
      
      it 'should return patient array if matching patients' do
        Patient.search('111111111', '').should == [@patient]
      end

    end

  end
  
  after(:all) do
    Patient.destroy_all
  end

end
