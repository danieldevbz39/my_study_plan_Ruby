# frozen_string_literal: true

module Parser

  class StaticEnvironment
    FORWARD_ARGS = :FORWARD_ARGS
    ANONYMOUS_BLOCKARG = :ANONYMOUS_BLOCKARG
    ANONYMOUS_RESTARG = :ANONYMOUS_RESTARG
    ANONYMOUS_KWRESTARG = :ANONYMOUS_KWRESTARG

    def initialize
      reset
    end

    def reset
      @variables = Set[]
      @stack     = []
    end

    def extend_static
      @stack.push(@variables)
      @variables = Set[]

      self
    end

    def extend_dynamic
      @stack.push(@variables)
      @variables = @variables.dup

      self
    end

    def unextend
      @variables = @stack.pop

      self
    end

    def declare(name)
      @variables.add(name.to_sym)

      self
    end

    def declared?(name)
      @variables.include?(name.to_sym)
    end

    def declare_forward_args
      declare(FORWARD_ARGS)
    end

    def declared_forward_args?
      declared?(FORWARD_ARGS)
    end

    def declare_anonymous_blockarg
      declare(ANONYMOUS_BLOCKARG)
    end

    def declared_anonymous_blockarg?
      declared?(ANONYMOUS_BLOCKARG)
    end

    def parent_has_anonymous_blockarg?
      @stack.any? { |variables| variables.include?(ANONYMOUS_BLOCKARG) }
    end

    def declare_anonymous_restarg
      declare(ANONYMOUS_RESTARG)
    end

    def declared_anonymous_restarg?
      declared?(ANONYMOUS_RESTARG)
    end

    def parent_has_anonymous_restarg?
      @stack.any? { |variables| variables.include?(ANONYMOUS_RESTARG) }
    end

    def declare_anonymous_kwrestarg
      declare(ANONYMOUS_KWRESTARG)
    end

    def declared_anonymous_kwrestarg?
      declared?(ANONYMOUS_KWRESTARG)
    end

    def parent_has_anonymous_kwrestarg?
      @stack.any? { |variables| variables.include?(ANONYMOUS_KWRESTARG) }
    end

    def empty?
      @stack.empty?
    end
  end

end
