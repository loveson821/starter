class VodkasController < ApplicationController
  # GET /vodkas
  # GET /vodkas.json
  def index
    @vodkas = Vodka.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vodkas }
    end
  end

  # GET /vodkas/1
  # GET /vodkas/1.json
  def show
    @vodka = Vodka.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vodka }
    end
  end

  # GET /vodkas/new
  # GET /vodkas/new.json
  def new
    @vodka = Vodka.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vodka }
    end
  end

  # GET /vodkas/1/edit
  def edit
    @vodka = Vodka.find(params[:id])
  end

  # POST /vodkas
  # POST /vodkas.json
  def create
    @vodka = Vodka.new(params[:vodka])

    respond_to do |format|
      if @vodka.save
        format.html { redirect_to @vodka, notice: 'Vodka was successfully created.' }
        format.json { render json: @vodka, status: :created, location: @vodka }
      else
        format.html { render action: "new" }
        format.json { render json: @vodka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vodkas/1
  # PUT /vodkas/1.json
  def update
    @vodka = Vodka.find(params[:id])

    respond_to do |format|
      if @vodka.update_attributes(params[:vodka])
        format.html { redirect_to @vodka, notice: 'Vodka was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vodka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vodkas/1
  # DELETE /vodkas/1.json
  def destroy
    @vodka = Vodka.find(params[:id])
    @vodka.destroy

    respond_to do |format|
      format.html { redirect_to vodkas_url }
      format.json { head :no_content }
    end
  end
end
