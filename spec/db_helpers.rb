def persisted_data(id:)
  connection = PG.connect(dbname: 'chitterbase_test')
  result = connection.query("SELECT * FROM peeps WHERE id = #{id};")
  result.first
end
