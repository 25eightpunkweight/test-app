class UserDatatable < AjaxDatatablesRails::Base

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
      id: { source: "User.id", cond: :eq},
      first_name: { source: "User.first_name", cond: :like },
      last_name: { source: "User.last_name", cond: :like },
      email: { source: "User.email", cond: :like },
      avatar: { source: "User.avatar", cond: :like }
    }
  end

  def data
    records.map do |record|
      {
        # example:
        # id: record.id,
        # name: record.name
        id: record.id,
        first_name: record.first_name,
        last_name: record.last_name,
        email: record.email,
        avatar: record.avatar,
        DT_RowId: record.id
      }
    end
  end

  private

  def get_raw_records
    # insert query here
    User.all
  end

  # ==== These methods represent the basic operations to perform on records
  # and feel free to override them

  # def filter_records(records)
  # end

  # def sort_records(records)
  # end

  # def paginate_records(records)
  # end

  # ==== Insert 'presenter'-like methods below if necessary
end
