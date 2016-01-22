require 'rails_helper'

describe "the sorted pumpkins", :type => :feature do
  #
  #
  it "has Price-Sort-Link" do
      visit '/pumpkins'
      expect(page).to have_link 'Price'
  end

  it "sort by price" do
      visit '/pumpkins'
      click_link 'Price'
  end
  #
  #
  it "has Type-Sort-Link" do
      visit '/pumpkins'
      expect(page).to have_link 'Type'
  end

  it "sort by name" do
      visit '/pumpkins'
      click_link 'Type'
  end
  #
  #
  it "has Size-Sort-Link" do
      visit '/pumpkins'
      expect(page).to have_link 'Size'
  end

  it "sort by size" do
      visit '/pumpkins'
      click_link 'Size'
  end
  #
  #
  it "has Color-Sort-Link" do
      visit '/pumpkins'
      expect(page).to have_link 'Color'
  end

  it "sort by color" do
      visit '/pumpkins'
      click_link 'Color'
  end
end
