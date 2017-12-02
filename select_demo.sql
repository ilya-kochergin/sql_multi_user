select last_name,
       case department_id 
       when 10 then 'администратор'
       when 90 then 'руководитель'
       else 'Работничек'
       end as категория
from shr.employees ;

select last_name,
       case  
       when department_id in (10,20) then 'администратор'
       when department_id=90 then 'руководитель'
       else 'Работничек'
       end as категория
from shr.employees ;


select * from session_roles;

`