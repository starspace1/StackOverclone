class Question < Post
  has_many :answers
  validates_presence_of :title, :body
  is_impressionable

  def is_answered?
    num_answers > 0
  end

  def num_answers
    answers.count
  end

  def num_views
    impressionist_count
  end

  def self.unanswered
    # I know this is awful...HALP
    dat_array = []
    all_dem_records = self.all
    all_dem_records.each do |dat_record|
      dat_array << dat_record unless dat_record.is_answered?
    end
    dat_array
  end

end
