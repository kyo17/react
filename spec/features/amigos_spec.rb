require('rails_helper');

RSpec.describe "Get" do
    context "Get all friends list" do
        it "having friend" do
            expect(Get.get.friends.getAll).to raise_error(ActiveRecord::RecordInvalid) 
        end
        describe "#add" do
            it "!have friends" do
                expect(!friends).to  raise_error("Error, no tienes amigos")
            end
    end  
end