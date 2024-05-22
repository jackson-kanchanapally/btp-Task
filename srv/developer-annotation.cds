using {Developers.Developer as Developer} from './developers';

annotate Developer with @(
    UI.LineItem: [
        {
            $Type:'UI.DataField',
            Value: name
        },
         {
            $Type:'UI.DataField',
            Value: skill
        },
         {
            $Type:'UI.DataField',
            Value: pay
        },
     
        
    ]
);

annotate Developer with @(
    UI.FieldGroup #Developer : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type:'UI.DataField',
            Value: name
        },
         {
            $Type:'UI.DataField',
            Value: skill
        },
         {
            $Type:'UI.DataField',
            Value: pay
        },
        
    ]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#Developer',
        },
    ],
    
);