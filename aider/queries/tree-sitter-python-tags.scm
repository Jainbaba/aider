(class_definition
  name: (identifier) @name.definition.class) @definition.class

(function_definition
  name: (identifier) @name.definition.function) @definition.function

(call
  function: [
      (identifier) @name.reference.call
      (attribute
        attribute: (identifier) @name.reference.call)
  ]) @reference.call

(decorated_definition
  (decorator
    (call
      function: (attribute
        object: (identifier) @decorator_object
        attribute: (identifier) @decorator_attribute (#eq? @decorator_attribute "route"))
      arguments: (argument_list
        (string) @decorator_argument)))
  definition: (class_definition
    name: (identifier) @name.decorator.definition.class) @decorator.definition.class) @main.decorator.class

(decorated_definition
  (decorator
    (call
      function: (attribute
        object: (identifier) @decorator.object
        attribute: (identifier) @decorator.attribute (#eq? @decorator_attribute "route"))
      arguments: (argument_list
        (string) @decorator.argument)))
  definition: (function_definition
    name: (identifier) @name.decorator.definition.function) @decorator.definition.function) @main.decorator.function