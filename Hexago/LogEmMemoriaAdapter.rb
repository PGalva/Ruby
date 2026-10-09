class LogEmMemoriaAdapter
  attr_reader :log_entries, :mensage

  def initialize
    @log_entries = []
    @mensage = ""
  end
  self.create(mensage)
  new(mensage)
end