class VendorsController < ApplicationController

  before_action :authenticate_user, {only: [:show]}

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find_by(id: params[:id])
    @categories = Category.all
    @vendor_systems = @vendor.get_vendor_systems
    @reviews = @vendor.get_reviews(@vendor_systems)

    @graph = LazyHighCharts::HighChart.new('graph') do |r|
      r.pane(size: '80%')
      r.xAxis(
        categories: Category.pluck(:name),
        tickmarkPlacement: 'on',
        lineWidth: 0
      )
      r.yAxis(
        gridLineInterpolation: 'polygon',
        lineWidth: 0,
        min: 0,
        max: 5,
        tickInterval: 1
      )
      r.tooltip(
        shared: true,
        pointFormat: '<span style="color:{series.color}">{series.name}: <b>${point.y:,.0f}</b><br/>'
      )
      r.legend(
        y: 70,
      )
      r.series(
        ame: 'Allocated Budget',
        data: [3.5, 2.8, 3.2, 3.7, 3.5, 4.0, 3.6, 2.5],
        pointPlacement: 'on'
      )
      r.chart(
        polar: true,
        type: 'area'
      )
    end
  end

end
