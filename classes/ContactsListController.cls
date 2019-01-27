public with sharing class ContactsListController {

    public void sortByLastName() {
        this.SortOrder='LastName';
    }


    public void sortByFirstName() {
        this.SortOrder='FirstName';
    }

private String sortOrder = 'LastName';
    
public List<Contact> getContacts() {
    
    List<Contact> results = Database.query(
        'SELECT Id, FirstName, LastName, Title, Email ' +
        'FROM Contact ' +
        'ORDER BY ' + sortOrder + ' ASC ' +
        'LIMIT 10'
    );
    return results;
}
}