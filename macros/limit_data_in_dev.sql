{% macro limit_data_in_dev(colum_name) %}
    {% if target.name == 'development' %}

        where{{colum_name}} >= dateadd('day', -30, current_timestamp)
    
    {% endif %}
{% endmacro %}