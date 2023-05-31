class EmailsController < ApplicationController
  include ActionView::RecordIdentifier
    before_action :authenticate_user!
    skip_before_action :verify_authenticity_token, only: [:create]
  
    def index
      @emails = current_user.emails
      @email = Email.new
    end
  
    def show
      @email = current_user.emails.find(params[:id])
    end
  
    def create
      @email = current_user.emails.build(subject: Faker::Lorem.sentence(word_count: 3), body: Faker::Lorem.paragraph(sentence_count: 2))
    
      if @email.save
        respond_to do |format|
          format.json { render json: @email, status: :created }
          format.html { redirect_to emails_path, notice: 'Email created.' }
        end
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @email.errors, status: :unprocessable_entity }
      end
    end
    
    def destroy
      @email = current_user.emails.find(params[:id])
      
      if @email.destroy
        respond_to do |format|
          format.turbo_stream { render turbo_stream: turbo_stream.remove(dom_id(@email)) }
          format.html { redirect_to emails_path, notice: 'Email was successfully deleted.' }
        end
      else
        format.html { redirect_to emails_path, alert: 'Error deleting email.' }
      end
    end
    
    
  
    private
  
    def email_params
      params.require(:email).permit(:subject, :body)
    end


  end
  