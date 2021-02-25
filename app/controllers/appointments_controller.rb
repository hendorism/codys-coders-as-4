class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show edit update destroy ]

  # GET /appointments or /appointments.json
  def index
    @appointments = Appointment.all
  end

  # GET /appointments/1 or /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments or /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: "Appointment was successfully created." }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1 or /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: "Appointment was successfully updated." }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1 or /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: "Appointment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_params
      params.require(:appointment).permit(:date, :time, :purpose, :notes, :patient_id, :doctor_id)
      # from as-3
      # params.require(:reply).permit(:body, :user_id, :post_id)
    end
end

















# i am a jelly donut.
# my friends call me sam
# they want to eat me
# jelly donut that i am
# chase me up and down the hills they do
# burned every calorie
# now i am fit donut
# but only to fit in your mouth
# if your dietary concerns dont prohibit
# the eating by you of me
# i am a donut
# not free
# in the possession of a hungry hand
# of crunching teeth
# of the eating man or woman
# who has come to consume
# me the donut
# fit but with jelly also remaining
# jelly for one more day of explaining
# i am a jelly donut
# having come here
# having come here so close to where the breath
# causes me chills
# and i am discarded half eaten
# where coffee spills
# my jelly and powdered sugar
# are lying not in or on me
# but around and down about me
# but i am a caloric device
# a fuel
# flaming entropy enters an eddy
# where a conscious entity
# makes a software desicion