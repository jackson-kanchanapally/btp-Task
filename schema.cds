namespace com.test.rdb;
using {managed,cuid} from '@sap/cds/common';

entity Developer: managed,cuid{
    @title:'Name'
    name:String(10);
    @title:'Skill'
    skill:String(50);
    @title:'Avg Pay'
    pay:String(50);
}