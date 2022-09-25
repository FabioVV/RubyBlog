require 'test_helper'

class CategoryTeste < ActiveSupport::TestCase


    def setup
        @category = Category.new(name: "Esportes")
    end

    test "category should be valid" do
        @category.name = " "
        #assert_not @category.valid?
    end 

    test "Name should be present" do
        #assert @category.valid?
    end 

    test "Name should be unique" do
        @category.save
        @category = Category.new(name: "Esportes")
        #assert_not @category2.valid?
    end 

    test "Name should not be too long" do
        @category.name = "a" * 26
        #assert_not @category.valid?
    end 

    test "Name should not be too short" do
        @category.name = "a" * 3
        #assert_not @category.valid?
    end 

end