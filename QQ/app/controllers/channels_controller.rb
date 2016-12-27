class ChannelsController < ApplicationController
  before_action :set_channel, only: [:show, :edit, :update, :destroy]

  # GET /channels
  # GET /channels.json
  def index
    @channels = Channel.all
    @comments = Comment.all
    self.callSlideshare('http://www.slideshare.net/lemiorhan/test-driven-design-gdg-devfest-istanbul-2016')
  end

  # GET /channels/1
  # GET /channels/1.json
  def show
      @channels = Channel.all
      @comments = Comment.all
      self.callSlideshare(@channel.slide)
  end

  # GET /channels/new
  def new
    @channel = Channel.new
  end

  # GET /channels/1/edit
  def edit
  end

  # POST /channels
  # POST /channels.json
  def create
    @channel = Channel.new(channel_params)

    respond_to do |format|
      if @channel.save
        format.html { redirect_to @channel, notice: 'Channel was successfully created.' }
        format.json { render :show, status: :created, location: @channel }
      else
        format.html { render :new }
        format.json { render json: @channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /channels/1
  # PATCH/PUT /channels/1.json
  def update
    respond_to do |format|
      if @channel.update(channel_params)
        format.html { redirect_to @channel, notice: 'Channel was successfully updated.' }
        format.json { render :show, status: :ok, location: @channel }
      else
        format.html { render :edit }
        format.json { render json: @channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /channels/1
  # DELETE /channels/1.json
  def destroy
    @channel.destroy
    respond_to do |format|
      format.html { redirect_to channels_url, notice: 'Channel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def manage
    @channels = Channel.all
    @channel = Channel.find(1)
    @join_count = [[1 , 60], [2, 65], [3, 64],[4 , 60], [5, 65], [6, 64],[7 , 100], [8, 65], [9, 64]]
    @evidence = [['よく理解できた',10],['理解できた',20],['あまり理解できなかった',5],['理解できなかった',30]]
  end


  def callSlideshare(memo)
    require 'rexml/document'
    require 'digest/sha1'
    require "net/https"
    require "uri"

    #SlideShare API呼び出し
    url_base = "https://www.slideshare.net/api/2/get_slideshow?slideshow_url="
    url_option  = "&exclude_tags=1&detailed=1&get_transcript=1"
    api_key = "4tHjhuRJ"
    secret_key = "nRMRkpx2"
    timestamp  = Time.now.to_i
    #SlideShre APIはsecret_key + timestampをSHA1でハッシュ化する必要がある
    hash = Digest::SHA1.hexdigest(secret_key+timestamp.to_s)
    #登録されたURLを正規表現に変更
    url_escape = CGI.escape(memo)
    #APIを叩くためのURL生成
    url = url_base + url_escape + "&api_key=" +  api_key + "&hash=" + hash + "&ts=" + timestamp.to_s + url_option
    uri = URI.parse(url)

    #APIリクエスト
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)
    status = response.code

    case status
    when "200"
        #XML形式で取得
        doc = REXML::Document.new(response.body)
        logger.debug doc
        #必要項目を取得
        @slideId = doc.elements['Slideshow/ID'].text
      else
        @slideId = "NG"
    end

    return @slideId
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_channel
      @channel = Channel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def channel_params
      params.require(:channel).permit(:name, :teacher, :time, :slide, :syllabus)
    end
end
