require "test_helper"

class DummyTest < ActiveSupport::TestCase
  test "hangs" do
    step = proc {
      Sync do
        ApplicationRecord.with_connection
      end
    }

    dummy = Dummy.create!
    dummy.transaction do
      dummy.instance_exec(&step)
    end
  end
end
