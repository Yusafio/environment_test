# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'The Fellowship of the Ring')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(author: 'J. R. R. Tolkien')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(price: '9.99')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(publishedDate: '07/29/1954')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.publishedDate = nil
    expect(subject).not_to be_valid
  end

end