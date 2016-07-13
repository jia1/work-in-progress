class ReportsController < ApplicationController
  def index
    @reports = Report.all

    respond_to do |format|
      format.html
      format.csv { send_data @reports.to_csv }
      format.xls # { send_data @reports.to_csv(col_sep: "\t") }
    end
  end
 
  def show
    @report = Report.find(params[:id])
  end
 
  def new
    @report = Report.new
  end
 
  def edit
    @report = Report.find(params[:id])
  end
 
  def create
    @report = Report.new(report_params)
 
    if @report.save
      redirect_to reports_path
    else
      render 'new'
    end
  end
 
  def update
    @report = Report.find(params[:id])
 
    if @report.update(report_params)
      redirect_to reports_path
    else
      render 'edit'
    end
  end
 
  def destroy
    @report = Report.find(params[:id])
    # @report.destroy
 
    redirect_to reports_path
  end

  def finance
    @reports = Report.where(:function => 'Finance')

    respond_to do |format|
      format.html
      format.csv { send_data @reports.to_csv }
      format.xls # { send_data @reports.to_csv(col_sep: "\t") }
    end
  end

  def logistics
    @reports = Report.where(:function => 'Logistics')

    respond_to do |format|
      format.html
      format.csv { send_data @reports.to_csv }
      format.xls # { send_data @reports.to_csv(col_sep: "\t") }
    end
  end

  def manpower
    @reports = Report.where(:function => 'Manpower')

    respond_to do |format|
      format.html
      format.csv { send_data @reports.to_csv }
      format.xls # { send_data @reports.to_csv(col_sep: "\t") }
    end
  end

  def publicity
    @reports = Report.where(:function => 'Publicity')

    respond_to do |format|
      format.html
      format.csv { send_data @reports.to_csv }
      format.xls # { send_data @reports.to_csv(col_sep: "\t") }
    end
  end
 
  private
    def report_params
      params.require(:report).permit(:date, :function, :title, :text)
    end
end