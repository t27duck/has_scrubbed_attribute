require 'spec_helper'

WITH_HTML = '<span>Some string <strong>here</strong>.</span>'
WITHOUT_HTML= 'Some string here.'

describe HasScrubbedAttribute do
  it 'has a version number' do
    expect(HasScrubbedAttribute::VERSION).not_to be nil
  end

  it 'removes html from the content attribute' do
    post = Post.new
    post.content = WITH_HTML
    post.save!
    post.reload
    expect(post.content).to eq(WITHOUT_HTML)
  end
end
