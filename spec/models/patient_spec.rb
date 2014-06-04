require 'spec_helper'

describe Patient do
 
  before(:each) do
    @patient = Patient.create(:first_name=>'dan', :last_name=>'bigs', :email=>'bigs@yahoo.com', :gender=>'1',
      :height=>'100', :status_id=>'1', :weight=>'100', :ssn=>111111111, :marital_status=>'single', :dob=>DateTime.now, :status_id=>'1')
    @patient_two = Patient.new(:first_name=>'', :last_name=>'', :email=>'', :gender=>'1',
      :height=>'100', :status_id=>'1', :weight=>'100', :ssn=>111111111, :marital_status=>'single', :dob=>DateTime.now, :status_id => '2')
    @patient_three = Patient.new(:first_name=>'', :last_name=>'', :email=>'', :gender=>'1',
      :height=>'100', :status_id=>'1', :weight=>'100', :ssn=>111111111, :marital_status=>'single', :dob=>DateTime.now, :status_id => '3')
    @status = Status.new(description: 'Waiting' )

  end

    it 'is invalid without a firstname' do
      @patient_two.should_not be_valid 
    end

    it 'is invalid without a lastname' do
      @patient_two.should_not be_valid
    end

    it 'is invalid without a email address' do
      @patient_two.should_not be_valid
    end

    it 'is invalid with duplicate email addresses' do
      @patient_two.email == '123@yahoo.com'
      @patient_two.email == '123@yahoo.com'
      @patient_two.should_not be_valid
    end

    it 'is invalid without a 9 digit ssn number' do
      @patient_two.ssn == 1111111
      @patient_two.should_not be_valid
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

  describe '.patient_status' do

    it 'should increment the status_id to two after leaving watiting room' do
      Patient.patient_status(@patient).should == 2
    end

    it 'should increment the status_id to three after leaving exam room' do
      Patient.patient_status(@patient_two).should == 3
    end

    it 'should increment the status_id to four after being checked out' do
      Patient.patient_status(@patient_three).should == 4
    end

  end

 
  after(:all) do
    Patient.destroy_all
  end

end