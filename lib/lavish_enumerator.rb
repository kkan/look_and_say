class LavishEnumerator < Enumerator
  def take(n)
    super(n + 1)
  end
end
