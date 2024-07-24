class BinaryTree 

    def initialize(value)
        @node = value
        @left_child = nil
        @right_child = nil
    end

    def insert_node(value)
        if value <= @node
            if @left_child.nil?
                @left_child = BinaryTree.new(value)
            else
                @left_child.insert_node(value)
            end
        else
            if @right_child.nil?
                @right_child = BinaryTree.new(value)
            else
                @right_child.insert_node(value)
            end
        end
    end

    def in_order
        if !@left_child.nil?
            @left_child.in_order
        end

        puts @node

        if !@right_child.nil?
            @right_child.in_order
        end
    end

    def pos_order
        if !@left_child.nil?
            @left_child.pos_order
        end

        if !@right_child.nil?
            @right_child.pos_order
        end

        puts @node
    end

    def pre_order
        puts @node

        if !@left_child.nil?
            @left_child.pos_order
        end

        if !@right_child.nil?
            @right_child.pos_order
        end
    end

    # Visualização
    def display(indent = 0)
        if @right_child
            @right_child.display(indent + 4)
        end
    
        puts ' ' * indent + @node.to_s
    
        if @left_child
            @left_child.display(indent + 4)
        end
    end

end


# Instanciando o objeto
tree = BinaryTree.new(50)
tree.insert_node(60)
tree.insert_node(40)
tree.insert_node(35)
tree.insert_node(45)
tree.insert_node(65)
tree.insert_node(70)

# Exibindo a árvore
tree.display

# Ordenações 
tree.in_order