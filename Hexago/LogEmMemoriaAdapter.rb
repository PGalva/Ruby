class LogEmMemoriaAdapter
  attr_reader :log_entries, :mensagem

  def initialize (mensagem)
    @log_entries = []
    @mensagem = ""

  end

  def registrar(mensagem)
    @log_entries << mensagem
  end

end