["Read", "Wrote", "Coded", "Laughed", "Learned"].each do |a|
  Activity.create(:name => a, :did => false)
end