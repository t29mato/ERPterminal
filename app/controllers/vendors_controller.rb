class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find_by(id: params[:id])

    @graph = LazyHighCharts::HighChart.new('graph') do |r|
      r.pane(size: '80%')
      r.xAxis(
        categories: ['企業安定性', '機能性', 'サポート体制', 'SEスキル', 'システム拡張性・将来性',
            '改善提案力', '業界・業務ノウハウ', '製品価格'],
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
