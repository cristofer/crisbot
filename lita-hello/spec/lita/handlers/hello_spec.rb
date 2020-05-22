require "spec_helper"

describe Lita::Handlers::Hello, lita_handler: true do
  it "responds with hello there!" do
    send_command("hi")
    expect(replies.last).to eq("hello there!")
  end
end
