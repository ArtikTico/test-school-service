namespace net.stankevich.data;

using { cuid, managed } from '@sap/cds/common';
using net.stankevich.data.Schools from './Schools';
using net.stankevich.data.Students from './Students';

entity SchoolToStudents : managed {
    key ID : Integer;
    key students : Association to Students @mandatory @assert.target;
    key schools: Association to Schools @mandatory @assert.target;
}

