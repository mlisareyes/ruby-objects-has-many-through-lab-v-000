class Patient

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointments.all.select {|appointment| appointment.patient == self}
  end

  def doctors
  end
end
