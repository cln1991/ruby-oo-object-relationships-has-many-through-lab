
class Patient

    attr_accessor :doctor, :appointments
    attr_reader :name

    @@all = []
  
    def initialize(name)
      @name = name
      @appointments = []
      @@all << self
    end

    def self.all
        @@all
    end

    def appointments
     return @appointments
    end


    def new_appointment(date, doctor)
      appointment = Appointment.new(date, self, doctor)
    end
  
  
    def doctors
      Appointment.all.map do |appointment|
        appointment.doctor
      end
    end
end