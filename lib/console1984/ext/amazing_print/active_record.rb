# Extends IRB execution workspaces to hijack execution attempts and
# pass them through Console1984.
module Console1984::Ext::AmazingPrint::ActiveRecord
  include Console1984::Freezeable

  # This method is invoked for showing returned objects in the console
  # Overridden to make sure their evaluation is supervised.
  def awesome_active_record_instance(object)
    Console1984.command_executor.execute_in_protected_mode do
      super
    end
  end
end
