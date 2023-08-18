namespace net.stankevich.data;

using {cuid, managed} from '@sap/cds/common';
using net.stankevich.data.SchoolToStudents from './SchoolToStudents';

entity Schools : cuid, managed {
    key ID : Integer;
    name : String(100) @mandatory;
    students : association to many SchoolToStudents on students.schools = $self;
}