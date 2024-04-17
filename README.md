# Conversion Events SDK Tag for Google Tag Manager

# Installation and Usage

## Suggested Variables

Some suggested variables and field mappings below:

| Variable (choose your own name) | Built-In/User-Defined |  GTM Variable Type  |                    Value                   |                                                                                                                                            Description                                                                                                                                            |   Template field   |
|:-------------------------------:|:---------------------:|:-------------------:|:------------------------------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:------------------:|
| TTD Advertiser ID               | User-Defined          | Constant            | (enter the Advertiser ID)                  | The ID of the Advertiser within The Trade Desk platform. The Trade Desk Account Manager can help provide this information.                                                                                                                                                                        | Advertiser ID      |
| TTD Merchant ID                 | User-Defined          | Constant            | (enter the Merchant ID)                    | The ID of the Merchant within The Trade Desk platform. The Trade Desk Account Manager can help provide this information, if needed.                                                                                                                                                               | Merchant ID        |
| TTD Universal Pixel ID          | User-Defined          | Constant            | (enter the Universal Pixel ID)             | The ID of the advertiser's Universal Pixel within The Trade Desk platform. The Trade Desk Account Manager can help provide this information. Each request must supply ONE of Universal Pixel ID or Tracking Tag ID.                                                                               | Universal Pixel ID |
| TTD Tracking Tag ID             | User-Defined          | Constant            | (enter the Tracking Tag ID)                | The ID of the advertiser's Tracking Tag (Image Pixel) within The Trade Desk platform. The Trade Desk Account Manager can help provide this information. Each request must supply ONE of Universal Pixel ID or Tracking Tag ID.                                                                    | Tracking Tag ID    |
| Page URL                        | Built-In              | URL                 |                                            | URL of the page the user is currently viewing.                                                                                                                                                                                                                                                    | Page URL           |
| Event                           | User Defined          | Lookup Table        | (see Event Name Translation section below) | The name of the Event (e.g. 'purchase'). Use a lookup table to convert Google's Event names to the standard events supported by The Trade Desk. Alternatively, to define event names to be supported and configured by The Trade Desk, contact your Account Manager or Technical Account Manager. | Event Name         |
| Data Layer - Transaction ID     | User-Defined          | Data Layer Variable | ecommerce.transaction_id                   | The associated transaction/order identifier of the event.                                                                                                                                                                                                                                         | Order ID           |
| Data Layer - Order Value        | User-Defined          | Data Layer Variable | ecommerce.value                            | The total value of the order/purchase.                                                                                                                                                                                                                                                            | Order Value        |
| Data Layer - Order Currency     | User-Defined          | Data Layer Variable | ecommerce.currency                         | The ISO 4217 currency code for the order value (e.g. USD, GBP, EUR, JPY etc).                                                                                                                                                                                                                     | Order Currency     |
| Data Layer - Ecommerce Items    | User-Defined          | Data Layer Variable | ecommerce.items                            | The location of items list within the event, expressed in dot format. (see section 'Including Product/Item Level Data' for more details)                                                                                                                                                          | Ecommerce Items    |


### Event Name Translation
The Google Tag Manager or Google Analytics implementation may be using different Event names than is supported by the TTD Conversion Events SDK/API.

This section describes how to set up an example Lookup Table variable to convert event names to the standard events supported by The Trade Desk. Alternatively, to define custom event names to be supported and configured by The Trade Desk, contact your Account Manager or Technical Account Manager.

#### Lookup Table Variable Definition
The below are suggested translations of GA4 events to TTD events. You will need to consider what events are in scope for your implementation and adjust for your requirements.

- **Input Variable**: `{{Event}}`  (This is the Built-In event name variable, or you could use whichever other variable contains the event name)
- **Set Default Value**: Yes (tick)
- **Default Value**: `{{Event}}`  (will simply return the Event Name unaltered if there's no matching rule in the lookup table)
- **Lookup Table**:

| Input Value (Google Event Name) | Output Value (TTD Event Name) |               Note               |
|:-------------------------------:|:-----------------------------:|:--------------------------------:|
| add_to_cart                     | addtocart                     |                                  |
| direction                       | direction                     | (no native GA4 event identified) |
| login                           | login                         |                                  |
| generate_lead                   | messagebusiness               |                                  |
| purchase                        | purchase                      |                                  |
| search                          | searchitem                    |                                  |
| page_view                       | sitevisit                     |                                  |
| begin_checkout                  | startcheckout                 |                                  |
| view_cart                       | viewcart                      |                                  |
| view_item                       | viewitem                      |                                  |
| add_to_wishlist                 | wishlistitem                  |                                  |

### Including Product/Item Level Data
1. Create a **Data Layer variable** for the Items list. For events using the format in the example event below, the data layer variable value would be **ecommerce.items**.
1. Add the variable into the **Ecommerce Event Item/Product Data** field of the tag created from the template.
1. Review the mappings defined on the tag to ensure each field contains the *name* of the relevant item field in the schema you are using. For events using the format in the example event below, the Item Code field can be set to 'item_id' as this is the item field that contains the required data.

### Example Event
Example/test ecommerce event being pushed to Google Tag Manager in Google Analytics 4 schema.
```javascript
window.dataLayer.push(
  {
    'event':'purchase',
    'ecommerce':{
      'transaction_id':'order12345',
      'value':13.49,
      'currency':'USD',
      'items':[
        {
            'item_id': 'item1234',
            'item_name': 'Washing Liquid',
            'unsupported_field':'unknown999',
            'item_category': 'Laundry',
            'price': 5.99,
            'quantity': 1
        },
        {
            'item_id': 'item6789',
            'item_name': 'Hand Soap',
            'unsupported_field':'unknown765',
            'item_category': 'Hygiene',
            'price': 2.50,
            'quantity': 3
        }
    ]
}});
```

# License

Refer to LICENSE file in the root directory of this source tree.
