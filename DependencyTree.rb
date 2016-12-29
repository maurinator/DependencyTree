class Node
  def initialize(tag)
    @children = Array.new
    @tag = tag
    @level = 0
  end
  def setLevel (level)
    @level = level
  end
  def getLevel ()
    @level
  end
  def addChild (node)
    node.setLevel(self.getLevel() + 1)
    @children.push(node)
  end
  def getChildren ()
    @children
  end
  def getTag ()
    @tag
  end
  # dfs
  def to_s()
    result = ""
    stack = Array.new
    stack.push(self)
    while (stack.length > 0)
      node = stack.pop()
      s = ''
      i = 0
      while (i < node.getLevel())
        s = s + ' '
        i = i + 1
      end
      result = result + s + node.getTag() + "\n"
      theirChildren = node.getChildren()
      theirChildren.each do |theirChild|
        stack.push(theirChild)
      end
    end
    result
  end
end
