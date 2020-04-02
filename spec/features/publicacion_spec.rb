require('rails_helper');

RSpec.describe "Post" do
    context "before a publication" do
        it "have publication" do
            expect(Post.create.publication.create).to raise_error(ActiveRecord::RecordInvalid) 
        end
    end  
end



