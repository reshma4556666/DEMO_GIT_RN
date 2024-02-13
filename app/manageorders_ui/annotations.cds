using CatalogService as service from '../../srv/service-catalog';
 
annotate service.SalesOrders with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        }
    ]
);
annotate service.SalesOrders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerNo',
                Value : customerNo,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Items',
            ID : 'Items',
            Target : 'items/@UI.LineItem#Items',
        },
    ]
);
annotate service.SalesOrderItems with @(
    UI.LineItem #Items : [
        {
            $Type : 'UI.DataField',
            Value : salesOrder_ID,
            Label : 'salesOrder_ID',
        },{
            $Type : 'UI.DataField',
            Value : item,
            Label : 'item',
        },{
            $Type : 'UI.DataField',
            Value : material,
            Label : 'material',
        },{
            $Type : 'UI.DataField',
            Value : quantity,
            Label : 'quantity',
        },]
);