class ChangeInstructionTypeForPlace < ActiveRecord::Migration[6.0]
  def change
    change_column :places, :instruction, "character varying[] USING string_to_array(translate(instruction::text, '[] ', ''), ',')::varchar[]", array: true
  end
end
