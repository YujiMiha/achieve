class InquiryController < ApplicationController
  def index
   @inquiry = Inquiry.new
  end
 
  def confirm
    # 入力値のチェック
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.valid?
      # OK。確認画面を表示
      render :action => 'confirm'
    else
      # NG。入力画面を再表示
      render :action => 'index'
    end
  end
 
  def thanks
    @inquiry = Inquiry.new(inquiry_params)
    
    if @inquiry.save
      
      render :action => 'thanks'
      
    else
      
      
      render :action => 'index'
      
      
    end
  end
  private
  def inquiry_params
    params.require(:inquiry).permit(:name,:email,:message,:back)
  end
end