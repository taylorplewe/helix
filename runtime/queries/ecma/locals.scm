; Scopes
;-------

[
  (statement_block)
  (arrow_function)
  (function_expression)
  (function_declaration)
  (method_definition)
  (for_statement)
  (for_in_statement)
  (catch_clause)
  (finally_clause)
] @local.scope

; Definitions
;------------

; ...i
(rest_pattern
  (identifier) @local.definition)

; { i }
(object_pattern
  (shorthand_property_identifier_pattern) @local.definition)

; { a: i }
(object_pattern
  (pair_pattern
    value: (identifier) @local.definition))

; [ i ]
(array_pattern
  (identifier) @local.definition)

; i => ...
(arrow_function
  parameter: (identifier) @local.definition)

; const/let/var i = ...
(variable_declarator
  name: (identifier) @local.definition)

; References
;------------

(identifier) @local.reference
