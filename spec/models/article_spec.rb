require 'rails_helper'

describe Article do
  describe "validations" do
      it { should validate_presence_of :title }
      it { should validate_presence_of :text }
  end

  describe "associations" do
  it { should have_many :comments }
  end

  describe "#subject" do
    it "reterns the article title" do
      # создаём объект article хитрым способом
      article = create(:article, title: 'Lorem Ipsum')

      # assert, проверка
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end
end