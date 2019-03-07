class PresentationvoicesController < ApplicationController
	BUCKET = 'my-bucket722'

	before_action :set_uploadvoice, only: [:index]

  def index
  end

  def upload

  	if (params[:voiceupload] and params[:presenter_id])
        file_name = params[:voiceupload].original_filename
        fname = params[:voiceupload].tempfile

        supl = Aws::S3::Resource.new(region:'us-west-2')
        obj = supl.bucket(BUCKET).object(file_name)
        obj.upload_file(fname)

        @pid = Presentationdetail.find(params[:presenter_id])
        @pid.pvoice = file_name

        respond_to do |format|
          if @pid.save
            format.html { redirect_to @pid, notice: 'Presentationdetail was successfully created.' }
            format.json { render :show, status: :created, location: @pid }
          else
            format.html { render :new }
            format.json { render json: @pid.errors, status: :unprocessable_entity }
          end
        end
      else
        render :text => "Couldn't complete the upload"
      end
  end

  def destroy
  	sdel = Aws::S3::Resource.new
      if (params[:voice])
      	@presenterid = Presentationdetail.find_by(:pvoice => params[:voice])
      	

        bucket = sdel.bucket(BUCKET)
        obj = bucket.object(params[:voice])
        obj.delete

        @presenterid.pvoice = "none"

        respond_to do |format|
          if @presenterid.save
            format.html { redirect_to @presenterid, notice: 'Presentationdetail was successfully created.' }
            format.json { render :show, status: :created, location: @presenterid }
          else
            format.html { render :new }
            format.json { render json: @presenterid.errors, status: :unprocessable_entity }
          end
        end
      else
        render :text => "No song was found to delete!"
      end
  end

  private

  def set_uploadvoice
      @signer = Aws::S3::Presigner.new
      @pid = Presentationdetail.find(params[:presenter_id])
      @url = @signer.presigned_url(:get_object, bucket: BUCKET, key: @pid.pvoice)
  end
end
