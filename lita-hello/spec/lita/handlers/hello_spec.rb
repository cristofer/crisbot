require "spec_helper"

describe Lita::Handlers::Hello, lita_handler: true do
  it { is_expected.to route("hi").to(:greeting) }
  it { is_expected.to route("bye").to(:unknown) }

  it "responds with hello there! when receives hi" do
    send_command("hi")
    expect(replies.count).to eq(1)
    expect(replies.last).to eq("hello there!")
  end

  it "responds empty when is another command different than hi" do
    send_command("bye")
    expect(replies.count).to eq(1)
    expect(replies.last).to eq("Sorry, I do not know that")
  end
end
