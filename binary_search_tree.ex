defmodule BSTree do

  defmodule Node do
    @enforce_keys  [:value, :left, :right]
    defstruct [:value, :left, :right]
  end

  alias BSTree.Node

  @spec new(any) :: %Node{}

  def new(value) do
    %Node{value: value, left: :leaf, right: :leaf}
  end

  @spec put(%Node{} | :leaf, any) :: %Node{}

  def put(%Node{value: value, left: left, right: right}, node_value) when node_value < value do
    %Node{value: value, left: put(left, node_value), right: right}
  end

  def put(%Node{value: value, left: left, right: right}, node_value) do
    %Node{value: value, left: left, right: put(right, node_value)}
  end

  def put(:leaf, node_value), do: new(node_value)

  @spec member?(%Node{} | :leaf, any) :: boolean()

  def member?(%Node{value: value, left: left, right: _right}, query) when query < value do
    member?(left, query)
  end

  def member?(%Node{value: value, left: _left, right: right}, query) when query > value do
    member?(right, query)
  end

  def member?(%Node{} = _node, _query) do
    true
  end

  def member?(:leaf, _query) do
    false
  end
end
