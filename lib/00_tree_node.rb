class PolyTreeNode
    attr_reader :parent, :children, :value
    def initialize(value, children = [], parent = nil)
        @parent = parent
        @children = children
        @value = value
    end

    def parent=(node)
        @parent = node
        
        
        # node.parent = @parent
        # @parent.children << node
    end
    
    def add_child(node)
        node.parent = self
    end
end