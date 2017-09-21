# 要运行测试，需要先gem install rspec

require_relative 'bookworm_classvars'
class FakeTime
  def self.now
    'Mon Apr 06 12:15:50'
  end
end

describe "test loan" do
  it "test_conversion_to_string" do
    Loan.instance_eval { @time_class = FakeTime }
    loan = Loan.new('War and Peace')
    result = loan.to_s
    expect(result).to eq('WAR AND PEACE loaned on Mon Apr 06 12:15:50')    # 检查结果应该要是 true
  end
end
