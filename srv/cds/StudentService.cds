using net.stankevich.data as education from '../../db/index';

@endpoints: [
{path : '/api/v1/students', protocol: 'odata-v4'}, // -> /odata/v4/api/v1/students
{path : '/api/v1/students', protocol: 'odata-v2'} // -> /odata/v2/api/v1/students
]

service StudentService @(requires: 'any') {
    entity StudentsModel as projection on education.Students;

    @readonly
    entity Students as projection on education.Students excluding {
        createdBy,
        modifiedBy
    }
}