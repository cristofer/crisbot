require "spec_helper"

describe Lita::Handlers::Hello, lita_handler: true do
  it { is_expected.to route("hi").to(:greeting) }

  it "responds with hello there!" do
    send_command("hi")
    expect(replies.last).to eq("hello there!")
  end
end
