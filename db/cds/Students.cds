namespace net.stankevich.data;
using {cuid, managed} from '@sap/cds/common';
using net.stankevich.data.SchoolToStudents from './SchoolToStudents';

entity Students : cuid, managed {
    key ID: Integer;
    firstname: String(100) @mandatory; 
    lastname: String (100) @mandatory;
    schools: Association to many SchoolToStudents on schools.students = $self;
}

