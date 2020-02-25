# language: en

Feature: Testing Simple Calculator Android

    Background:
        Given I started Simple Calculator app            

@math_success
    Scenario Outline: Making maths operations
        When I add numbers in first_number and second_number
        And I pressed at math operator <op_id>        
        Then the result has to be according to the math operation <operation>
        
    Examples:
        | operation        | op_id    |
        | "Addition"       | "op_sum" |
        | "Subtraction"    | "op_sub" |
        | "Multiplication" | "op_mul" |
        | "Division"       | "op_div" |
    