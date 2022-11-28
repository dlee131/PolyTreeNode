class PolyTreeNode
    attr_reader :parent, :children, :value
    def initialize(value, children = [], parent = nil)
        @parent = parent
        @children = children
        @value = value
    end

    def parent=(node)
        @parent = node  
        @parent.children << self
        
        # node.parent = @parent
        # @parent.children << node
    end
    
    def add_child(node)
        node.parent = self
    end

    def remove_child(node)
        raise "error" if !@children.include?(node)
        node.parent = nil
    end

    private
    def inspect
        { "value" => @value, "parent" => @parent }.inspect
    end
end