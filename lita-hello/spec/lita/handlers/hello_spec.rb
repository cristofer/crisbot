require "spec_helper"

describe Lita::Handlers::Hello, lita_handler: true do
  it { is_expected.to route("hi").to(:greeting) }

  it "responds with hello there! when receives hi" do
    send_command("hi")
    expect(replies.last).to eq("hello there!")
  end

  it "responds empty when is another command different than hi" do
    send_command("bye")
    expect(replies.last).to eq("Sorry, I do not know that")
  end
end
