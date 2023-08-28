using net.stankevich.data as education from '../../db/index';

@endpoints: [
{path : '/api/v1/schools', protocol: 'odata-v4'}, // -> /odata/v4/api/v1/schools
{path : '/api/v1/schools', protocol: 'odata-v2'} // -> /odata/v2/api/v1/schools
]

service SchoolService @(requires: 'any') {
    entity SchoolsModel as projection on education.Schools;

    @readonly
    entity Schools as projection on education.Schools excluding {
        createdBy,
        modifiedBy
    }
}