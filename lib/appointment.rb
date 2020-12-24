class Appointment

    attr_accessor :patient, :doctor, :date
  
    @@all = []
  
    def initialize(date, patient, doctor)
      @patient = patient
      @doctor = doctor
      @date = date
      @@all << self
      @patient.appointments << self
      @doctor.appointments << self
      @doctor.patients << @patient
    end
  
    def self.all
      @@all
    end
  
    def patient
      @patient
    end

    def doctor
      @doctor
    end
end