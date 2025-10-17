{% macro generate_schema_name(custom_schema_name, node=None) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}
            {{ default_schema }}
    {%- elif target.name == 'local' -%}
            {{ default_schema }}
    {%- else -%}
            {{ custom_schema_name | trim }}
    {%- endif -%}

{%- endmacro %}