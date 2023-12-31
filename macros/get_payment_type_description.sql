{#
    This macro returns the description of the payment type
#}

{% macro get_payment_type_description(payment_type) -%}
 
    case {{ payment_type }}
        when 1 then 'Credit Card'
        when 2 then 'Cash'
        when 3 then 'Dispute'
        when 4 then 'Unknown'
        when 5 then 'Voided trip'
    end

{%- endmacro %}