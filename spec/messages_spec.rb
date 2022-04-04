require 'rspec'
require './lib/messages'

describe Message do
  let(:message){Message.new}

  it 'exists' do
    expect(message).to be_a(Message)
  end

  it 'Can print messages' do
    expect(message).to respond_to(:welcome_message)
    expect(message).to respond_to(:player_message)
    expect(message).to respond_to(:error_message)
    expect(message).to respond_to(:computer_message)
    expect(message).to respond_to(:invalid_input_message)
    expect(message).to respond_to(:player_win_message)
    expect(message).to respond_to(:computer_win_message)
  end
end
