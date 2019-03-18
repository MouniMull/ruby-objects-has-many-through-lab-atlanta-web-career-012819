class Patient
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|x| x.patient == self}
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def doctors
    appointments.map {|c| c.doctor}
  end

end
