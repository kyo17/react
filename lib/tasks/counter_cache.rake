desc 'Counter cache for post has many comments'

task comments_counter: :environment do
  Post.reset_column_information
  Post.pluck(:id).each do |p|
    Post.reset_counters p, :comments
  end
end
