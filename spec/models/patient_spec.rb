require 'spec_helper'

describe Patient do
 
  before(:each) do
   @patient = Patient.create(:first_name=>'dan', :last_name=>'bigs', :email=>'bigs@yahoo.com', :gender=>'1',
      :height=>'100', :status_id=>'1', :weight=>'100', :ssn=>111111111, :marital_status=>'single', :dob=>DateTime.now)
   @new_patient = Patient.new(:first_name=>'', :last_name=>'', :email=>'', :gender=>'1',
      :height=>'100', :status_id=>'1', :weight=>'100', :ssn=>11111111, :marital_status=>'single', :dob=>DateTime.now)
   @status = Status.new(description: 'Waiting' )

  end

    it 'is invalid without a firstname' do
      @new_patient.should_not be_valid 
    end

    it 'is invalid without a lastname' do
      @new_patient.should_not be_valid
    end

    it 'is invalid without a email address' do
      @new_patient.should_not be_valid
    end

    it 'is invalid with duplicate email addresses' do
      @patient.email == '123@yahoo.com'
      @new_patient.email == '123@yahoo.com'
      @new_patient.should_not be_valid
    end

    it 'is invalid without a 9 digit ssn number' do
      @patient.ssn == 111111
      @patient.should_not be_valid
    end

  describe Status do
    describe '#status_message' do

      it 'returns a waiting message' do
        @patient = Patient.new(:status_id => 1)
        @patient.status_message.should eq("Patient is Waiting")
      end

      it 'returns a in office message' do
        @patient = Patient.new(:status_id => 2)
        @patient.status_message.should eq("Patient is with the Dr.")
      end
    end
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