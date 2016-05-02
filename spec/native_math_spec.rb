require 'spec_helper'

describe NativeMath do
  it 'has a version number' do
    expect(NativeMath::VERSION).not_to be nil
  end

  it 'can solve the ultimate question of life, the universe and everything' do
    expect(NativeMath::add(39, 3)).to eq 42
  end
end
