class PolyTreeNode
    attr_reader :parent, :children, :value
    def initialize(value, children = [], parent = nil)
        @parent = parent
        @children = children
        @value = value
    end

    def parent=(node)
        @parent = node.parent
        @parent.children << node
        node.parent = @parent
        @parent.children << node
    end

end