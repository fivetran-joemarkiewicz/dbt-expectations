
{% macro test_expect_column_pair_values_A_to_be_greater_than_B(model, column_A, column_B, or_equal=None) %}
{% set partition_column = kwargs.get('partition_column', kwargs.get('arg')) %}
{% set partition_filter =  kwargs.get('partition_filter', kwargs.get('arg')) %}
{% set operator = "<" if or_equal else "<=" %}

{{ dbt_expectations.column_pair_values_compare_A_to_B(model, 
                                        column_A,
                                        column_B,
                                        operator,
                                        partition_column,
                                        partition_filter
                                        )
                                        }}

{% endmacro %}