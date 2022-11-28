class PolyTreeNode
    
    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end

    def parent=(node)
        @parent = node.parent
        @parent.children << node
        node.parent = @parent
        @parent.children << node
    end

end