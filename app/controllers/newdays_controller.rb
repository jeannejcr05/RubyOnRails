class NewdaysController < ApplicationController
  before_action :set_newday, only: %i[ show edit update destroy ]

  # GET /newdays or /newdays.json
  def index
    @newdays = Newday.all
  end

  # GET /newdays/1 or /newdays/1.json
  def show
  end

  # GET /newdays/new
  def new
    @newday = Newday.new
  end

  # GET /newdays/1/edit
  def edit
  end

  # POST /newdays or /newdays.json
  def create
    @newday = Newday.new(newday_params)

    respond_to do |format|
      if @newday.save
        format.html { redirect_to newday_url(@newday), notice: "Newday was successfully created." }
        format.json { render :show, status: :created, location: @newday }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @newday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newdays/1 or /newdays/1.json
  def update
    respond_to do |format|
      if @newday.update(newday_params)
        format.html { redirect_to newday_url(@newday), notice: "Newday was successfully updated." }
        format.json { render :show, status: :ok, location: @newday }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @newday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newdays/1 or /newdays/1.json
  def destroy
    @newday.destroy

    respond_to do |format|
      format.html { redirect_to newdays_url, notice: "Newday was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newday
      @newday = Newday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def newday_params
      params.require(:newday).permit(:title, :date, :mood, :doing, :picture)
    end
end
