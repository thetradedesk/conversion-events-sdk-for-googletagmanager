___TERMS_OF_SERVICE___

﻿By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "The Trade Desk Conversion Events JS SDK",
  "brand": {
    "id": "brand_dummy",
    "displayName": "",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAMAAABF0y+mAAAAZlBMVEX///+o0v2Sx/yu1v1NrfsAlPoAlfpWsPv3/P8Al/oAmfpcsvuTyvwjofrX6/6Ew/w7pvuezvwAkPq02f0AkfoAi/m53P3a7f4Am/rG4/0loPp0vPzr9v/j8v57vvzQ6P5CqfvB4P3CUxjqAAAA3UlEQVR4AbXQRQLDMAxE0SnIsSbsqsz3P2QpDNv+7TMK/26x/Laax7U45ySCn0WnpMZI0myKeRQXXywlJEPxn4CN/JCW9y0Ott0Bqy/uD8qw6ywLtCNqhD8pXYdn1TNaxEUoZYuk7XuI3LFo7GIU9HFvNF/j3pgOEB/c13g1HioMEuGbdOibU463W9nsvKKuoGzQ6y4UNJXCQx9j1QhNXqhxZ0ej9Ua0MrqH7w7VFL3ORjvi2yU3MuzR7xbsjmcRpeY+9sSw4+GIpylJ0TsmeTyDE9MlZruUy1WGv/cG5XQMrEzH6WoAAAAASUVORK5CYII="
  },
  "description": "A template that captures client-side conversion and sends them to The Trade Desk Real-Time Conversion Events API.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "LABEL",
    "name": "label_accountconfig",
    "displayName": "Account configuration"
  },
  {
    "type": "SELECT",
    "name": "sender_type",
    "displayName": "Sender Type",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "merchant",
        "displayValue": "Merchant"
      },
      {
        "value": "advertiser",
        "displayValue": "Advertiser"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "merchant"
  },
  {
    "type": "TEXT",
    "name": "merchant_id",
    "displayName": "Merchant ID",
    "simpleValueType": true,
    "help": "The platform ID of the merchant assigned by The Trade Desk to the merchant during the onboarding process.",
    "enablingConditions": [
      {
        "paramName": "sender_type",
        "paramValue": "merchant",
        "type": "EQUALS"
      }
    ],
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "adv",
    "displayName": "Advertiser ID",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "help": "The platform ID for the advertiser on whose behalf the tracking call was made.",
    "enablingConditions": [
      {
        "paramName": "sender_type",
        "paramValue": "advertiser",
        "type": "EQUALS"
      }
    ],
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "LABEL",
    "name": "label_tagconfig",
    "displayName": "Tag Configuration"
  },
  {
    "type": "SELECT",
    "name": "tag_type",
    "displayName": "Tracking Tag Type",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "tracker_id",
        "displayValue": "Event Tracker"
      },
      {
        "value": "upixel_id",
        "displayValue": "Universal Pixel"
      }
    ],
    "simpleValueType": true,
    "help": "Choose the type of tracking tag",
    "defaultValue": "tracker_id",
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "tracker_id",
    "displayName": "Tracker ID",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "The platform ID of the event tracker (Image pixel ID)",
    "enablingConditions": [
      {
        "paramName": "tag_type",
        "paramValue": "tracker_id",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "upixel_id",
    "displayName": "Universal Pixel ID",
    "simpleValueType": true,
    "help": "The platform ID of the event tracker (Universal Pixel ID)",
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "tag_type",
        "paramValue": "upixel_id",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "referrer_url",
    "displayName": "Page URL",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "event_name",
    "displayName": "Event Name",
    "simpleValueType": true,
    "help": "The event type defined by the partner platform. To define event types to be supported and configured by The Trade Desk, contact your Account Manager or Technical Account Manager."
  },
  {
    "type": "GROUP",
    "name": "orderdetails",
    "displayName": "Order Details",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "order_id",
        "displayName": "Order ID",
        "simpleValueType": true,
        "help": "The associated order identifier of the event."
      },
      {
        "type": "TEXT",
        "name": "value",
        "displayName": "Order Value",
        "simpleValueType": true,
        "help": "The revenue-tracking value with a period (not a comma) as a decimal point."
      },
      {
        "type": "TEXT",
        "name": "currency",
        "displayName": "Currency",
        "simpleValueType": true,
        "help": "The ISO 4217 currency code for the revenue value (e.g. USD,GBP, etc)"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "item_group",
    "displayName": "Items (Products)",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "items",
        "displayName": "Event Item/Product Data",
        "simpleValueType": true,
        "help": "Suggested: create a Data Layer variable that provides the event\u0027s item/product list."
      },
      {
        "type": "GROUP",
        "name": "item_mappings",
        "displayName": "Mappings: Item/Product parameter to TTD API Item parameter",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "LABEL",
            "name": "label1",
            "displayName": "For each item/product within the list specified above, enter the name of the item/product object parameter that contains the required value. Note: simply enter a parameter name, rather than a variable that returns the value of that parameter.\u003cbr/\u003e\u003cbr/\u003eCan be tailored to the required schema being used. Defaults to GA4 schema."
          },
          {
            "type": "TEXT",
            "name": "item_mapping_item_code",
            "displayName": "Item Code (item_code)",
            "simpleValueType": true,
            "defaultValue": "item_id",
            "valueHint": "item_id"
          },
          {
            "type": "TEXT",
            "name": "item_mapping_name",
            "displayName": "Name (name)",
            "simpleValueType": true,
            "defaultValue": "item_name",
            "valueHint": "item_name"
          },
          {
            "type": "TEXT",
            "name": "item_mapping_qty",
            "displayName": "Quantity (qty)",
            "simpleValueType": true,
            "defaultValue": "quantity",
            "valueHint": "quantity"
          },
          {
            "type": "TEXT",
            "name": "item_mapping_price",
            "displayName": "Price (price)",
            "simpleValueType": true,
            "defaultValue": "price",
            "valueHint": "price"
          },
          {
            "type": "TEXT",
            "name": "item_mapping_cat",
            "displayName": "Category (cat)",
            "simpleValueType": true,
            "defaultValue": "item_category",
            "valueHint": "item_category"
          }
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "tag_type",
        "paramValue": "tracker_id",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "custom",
    "displayName": "Custom Fields (TD1-TD10)",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "td1",
        "displayName": "TD1",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td2",
        "displayName": "TD2",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td3",
        "displayName": "TD3",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td4",
        "displayName": "TD4",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td5",
        "displayName": "TD5",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td6",
        "displayName": "TD6",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td7",
        "displayName": "TD7",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td8",
        "displayName": "TD8",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td9",
        "displayName": "TD9",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "td10",
        "displayName": "TD10",
        "simpleValueType": true
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "attribution",
    "displayName": "Attribution Override",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "imp",
        "displayName": "Impression ID",
        "simpleValueType": true,
        "help": "A 36-character string (including dashes) that serves as the unique ID for the impression that was bought via The Trade Desk, to which the event is attributed."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "group_userdefined",
    "displayName": "User Defined API Parameters",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "userdefined",
        "displayName": "Parameter Entry",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Parameter",
            "name": "parameter",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "help": "Use this table to add any parameters that you need to send that are not supported by the template."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "advanced",
    "displayName": "SDK Advanced Technical Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "sdk_url",
        "displayName": "TTD Conversion Javascript SDK URL",
        "simpleValueType": true,
        "defaultValue": "https://js.adsrvr.org/conversionEvents-v1.min.js",
        "help": "Default is \u0027https://js.adsrvr.org/conversionEvents-v1.min.js\u0027"
      },
      {
        "type": "TEXT",
        "name": "sdk_object_name",
        "displayName": "SDK Object name",
        "simpleValueType": true,
        "help": "Name of main object for the SDK. Note: changes will require an update to the standard Access Global Variables permissions settings of the template to allow accessing the alternate object.",
        "defaultValue": "TTDConversionEvents"
      },
      {
        "type": "TEXT",
        "name": "sdk_events_layer",
        "displayName": "SDK Events Layer",
        "simpleValueType": true,
        "defaultValue": "ttdConversionEventsLayer",
        "help": "Name of events queue the SDK. Note: changes will require an update to the standard Access Global Variables Permissions settings of the template to allow accessing the alternate function."
      },
      {
        "type": "TEXT",
        "name": "sdk_function_name",
        "displayName": "SDK Function Name",
        "simpleValueType": true,
        "defaultValue": "ttdConversionEvents",
        "help": "Name of main utility function for the SDK. Note: changes will require an update to the standard Access Global Variables permissions settings of the template to allow accessing the alternate function."
      },
      {
        "type": "SELECT",
        "name": "sdk_cookie_sync",
        "displayName": "Enable Cookie Sync",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": 0,
            "displayValue": "No"
          },
          {
            "value": 1,
            "displayValue": "Yes"
          }
        ],
        "simpleValueType": true,
        "defaultValue": 0
      },
      {
        "type": "SELECT",
        "name": "sdk_enable_debug",
        "displayName": "Enable Debug",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": 0,
            "displayValue": "No"
          },
          {
            "value": 1,
            "displayValue": "Yes"
          }
        ],
        "simpleValueType": true,
        "defaultValue": 0
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

/*************************************************************
 * The Trade Desk Conversion SDK Template
 * - Simplifies implementation of the Conversion SDK - no Javascript knowledge required.
 * - Automatically takes care of loading the hosted SDK Javascript and initialisation steps, if needed.
 * - Simplifies mapping of product 'item' lists from one format to TTD format. (e.g. GA4 items schema to TTD items schema)
 ************************************************************/

/***********************************************
 * IMPORTS / CONSTANTS
 **********************************************/
// import Google APIs
const logToConsole = require('logToConsole');
const injectScript = require('injectScript');
const createArgumentsQueue = require('createArgumentsQueue');
const queryPermission = require('queryPermission');
const JSON = require('JSON');
const callInWindow = require('callInWindow');
const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');

//logging settings
const cfgLogToGTM = true; //even if true, GTM template defaults to only showing the logging in Debug/Preview modes

//Register TTD Conversion SDK globals (scripts / functions)
const sdk_url = data.sdk_url; //URL of SDK javascript file
const sdk_cache_token = sdk_url; //token to use for caching (URL of SDK)
const sdk_function_name = data.sdk_function_name; //main SDK function
const sdk_events_layer = data.sdk_events_layer; //events layer/queue
const sdk_cookie_sync = data.sdk_cookie_sync; //boolean: whether cookie syncing is enabled on init event

//empty function to provide as a callback argument
const doNothing = () => {};

/***********************************************
 * Wrapper function for logging to console.
 * - calls regular GTM logging API.
 * - could be modified to add other logging techniques later, such as string prefixes for messages, error levels etc.
 **********************************************/
const log = (logMsg) => {
    if (cfgLogToGTM) logToConsole(logMsg);
};

/***********************************************
 * Function to check if SDK is loaded
 * - determined by checking whether the required main function for the SDK is defined and accessible in the 'window' scope
 * - returns true (loaded) or false (not loaded).
 **********************************************/
const isSDKLoaded = function () {
    return isWindowVarAvailable(data.sdk_object_name, 'object');
};

/***********************************************
 * Function to check if SDK has been given an init event
 * - note: doesn't confirm if the event has actually been fired or not
 * - returns true (init event found in queu) or false (no init event in queue).
 **********************************************/
const isSDKInitialised = function () {
    log('isSDKInitialised()');
    var ttdConversionEventsLayer = copyFromWindow(data.sdk_events_layer);
    log(ttdConversionEventsLayer);

    for (var i = 0; i < ttdConversionEventsLayer.length; i++) {
        log(ttdConversionEventsLayer[i]);
        if (ttdConversionEventsLayer[i][0] == 'init') {
            return true;
        }
    }
    return false;
};

/***********************************************
 * Load the external Conversion SDK using GTM's injectScript API
 * - checks permissions to load the script
 * - calls 'onsuccess' once the script loads, or if the script has previously been loaded
 * - Calls 'onfail' if it doesn't load.
 **********************************************/
const injectSDKScript = (url, onsuccess, onfail, cache_token) => {
    log(
        'injectSDKScript(' +
            url +
            ',' +
            typeof onsuccess +
            ',' +
            typeof onfail +
            ',' +
            cache_token +
            ')'
    );

    if (queryPermission('inject_script', url)) {
        log('injectSDKScript: Permission check: OK');

        //load script, then proceed to execution
        log('injectSDKScript: Injecting SDK script');

        injectScript(url, onsuccess, onfail, cache_token); //add cache token to mitigate additional loads
    } else {
        log('Permission check: FAIL');
        onfail();
    }
};

/***********************************************
 * Add an event to Events Layer queue
 * - parameters: event_name (string, name of event), event (object)
 **********************************************/
const addEventToEventsLayer = function (event_name, event) {
    log('addEventToQueue("' + event_name + '", (object below)');
    log(event);
    //create/get arguments queue (won't overwrite if it already exists)
    var ttdConversionEvents = createArgumentsQueue(
        data.sdk_function_name,
        data.sdk_events_layer
    );
    ttdConversionEvents(event_name, event);
};

/***********************************************
 * Generate an Init event and add it to the queue
 **********************************************/
const fireInitEvent = function () {
    //enableCookieSyncing: true
    var initEventObj = {};

    //rely on template field rules to ensure (only) one of these is set
    if (hasValue(data, 'merchant_id'))
        initEventObj.merchantId = data.merchant_id;
    if (hasValue(data, 'adv')) initEventObj.advertiserId = data.adv;

    initEventObj.enableCookieSyncing =
        data.sdk_cookie_sync === 1 ? true : false;
    initEventObj.enableDebug = data.sdk_enable_debug === 1 ? true : false;

    log('Add initialisation object to argument queue');
    log(initEventObj);

    addEventToEventsLayer('init', initEventObj);
    //return true;
};

/***********************************************
 * Generate the user event from input data (typically variables sourcing from the GTM Data Layer) and add the event to the TTD Events Layer, which will send it to TTD's Real Time Conversion API
 * - Expects the TTD Events Layer queue to already be initialised
 **********************************************/
const fireEvent = (data) => {
    log('Adding event to queue...');

    var ttd_event = generateTTDEvent(data);

    addEventToEventsLayer('event', ttd_event);

    log('Event added to queue');
};

/***********************************************
 * Extract item level data from an items list, and convert to TTD schema, using user provided mappings
 **********************************************/
var extractMappedItems = function (input) {
    //skip if no items data is provided
    if (!hasValue(input, 'items')) return null;

    var items_src = input.items;

    //TTD API Item Field, Name of template field containing the name of corresponding key in provided items
    var item_mapping_fields = [
        ['item_code', 'item_mapping_item_code'],
        ['name', 'item_mapping_name'],
        ['qty', 'item_mapping_qty'],
        ['price', 'item_mapping_price'],
        ['cat', 'item_mapping_cat'],
    ];

    var items = [];

    //work through each item to map it to TTD schema
    for (let i = 0; i < items_src.length; i++) {
        var item = {};
        for (let k = 0; k < item_mapping_fields.length; k++) {
            var item_src = items_src[i];
            var field_ttd = item_mapping_fields[k][0];
            var field_src_mapping = item_mapping_fields[k][1];
            //log(item_src, field_ttd, field_src_mapping);

            if (
                hasValue(input, field_src_mapping) &&
                hasValue(item_src, input[field_src_mapping])
            ) {
                item[field_ttd] = item_src[input[field_src_mapping]];
            }
        }

        //add the item if it has any data added
        if (item !== {}) items.push(item);
    }

    if (items !== []) return items;
    else return null;
};

/***********************************************
 * Function that returns true if a key is defined within an object
 **********************************************/
var hasValue = function (obj, key) {
    if (typeof obj[key] === 'undefined') {
        return false;
    } else {
        return true;
    }
};

/***********************************************
 * Function that generates an event object per TTD schema, from input data provided in the GTM Template.
 * - At the moment this is mostly redundant as its simply copying most properties from one object to another.
 * - But it means we end up with an object only containing supported fields provides an easy place to add adaptions/transforms.
 * - Note: Doesn't handle item list transformation, or merging of User Defined API Parameters. These needs to be done in addition.
 **********************************************/
var generateTTDEvent = function (input) {
    var event = {};

    //populate relevant tag ID by tag type selected
    if (hasValue(input, input.tag_type))
        event[input.tag_type] = input[input.tag_type];

    //event
    if (hasValue(input, 'event_name')) event.event_name = input.event_name;

    //page URL
    if (hasValue(input, 'referrer_url'))
        event.referrer_url = input.referrer_url;

    //order details
    if (hasValue(input, 'order_id')) event.order_id = input.order_id;
    if (hasValue(input, 'value')) event.value = input.value;
    if (hasValue(input, 'currency')) event.currency = input.currency;

    //custom values
    if (hasValue(input, 'td1')) event.td1 = input.td1;
    if (hasValue(input, 'td2')) event.td2 = input.td2;
    if (hasValue(input, 'td3')) event.td3 = input.td3;
    if (hasValue(input, 'td4')) event.td4 = input.td4;
    if (hasValue(input, 'td5')) event.td5 = input.td5;
    if (hasValue(input, 'td6')) event.td6 = input.td6;
    if (hasValue(input, 'td7')) event.td7 = input.td7;
    if (hasValue(input, 'td8')) event.td8 = input.td8;
    if (hasValue(input, 'td9')) event.td9 = input.td9;
    if (hasValue(input, 'td10')) event.td10 = input.td10;

    //Attribution override - impression id
    if (hasValue(input, 'imp')) event.imp = input.imp;

    //add additional product items, if there are any, mapping them to the TTD API fields for Items
    var mappedItems = extractMappedItems(input);
    log('mapped items=' + JSON.stringify(mappedItems));
    if (mappedItems) {
        event.items = mappedItems;
    }

    //merge user defined parameters into the event
    event = mergeUserDefinedParams(event, input.userdefined);

    return event;
};

/***********************************************
 * Extract User Defined Parameters
 *
 * @param {object} event - the event to add the parameters to.
 * @param {array} userdefined - the array of user defined parameter objects (key value pairs)
 * @return {object} event - Always returns the event with user defined parameters added. Will be unchanged if mapping of user defined parameters was unsuccessful or there weren't any parameters to merge.
 */
const mergeUserDefinedParams = function (event, userdefined) {
    //skip if no userdefined event data is provided
    if (!userdefined) return event;

    //validate type is a list/array ?

    for (var i in userdefined) {
        var pair = userdefined[i];
        var parameter = pair.parameter;
        var value = pair.value;
        if (hasValue(event, parameter)) {
            log(
                'Cannot overwrite existing parameter [' +
                    parameter +
                    '] with User Defined Parameter'
            );
            continue;
        }

        //add the parameter to the event
        event[parameter] = value;
    }

    return event;
};

/***********************************************
 * Function to handle a failed load of the external Universal Pixel script.
 * - run as a callback on script load failure.
 * - As this is likely called asynchronously, any logged messages may not appear.
 **********************************************/
const onLoadFail = () => {
    log('Script load FAILED.');
    //data.gtmOnFailure();
};

/***********************************************
 * Function to check if a variable in the window scope is defined, accessible, and of the expected type
 * - determined by checking whether 'window_var_name' is defined in the 'window'
 * - returns true (exists and expected type) otherwise false.
 **********************************************/
const isWindowVarAvailable = (window_var_name, type) => {
    log(
        'Checking if Global/Window variable is available and expected type. var: ' +
            window_var_name +
            ', type: ' +
            type
    );
    var window_var = copyFromWindow(window_var_name);
    log(typeof window_var);
    if (typeof window_var === type) {
        return true;
    } else return false;
};

/***********************************************
 * Check if Events Layer queue has been created
 * - returns true if it is found, false if not found
 **********************************************/
const isEventsLayerPresent = function () {
    log('isEventsLayerPresent()');
    var events_layer = copyFromWindow(data.sdk_events_layer);
    if (typeof events_layer == 'object') {
        log('Events layer FOUND');
        return true;
    } else {
        log('Events layer NOT found');
        return false;
    }
};

/***********************************************
 * EXECUTE
 **********************************************/

//dump data object
log('DATA....');
log(data);

//If its the first event being handled on this page, make sure to initialise the queue and inject the script.
if (!isEventsLayerPresent()) {
    fireInitEvent();
    injectSDKScript(sdk_url, doNothing, doNothing);
}

//add Event to queue (dont need to know/care if the script is downloaded yet)
fireEvent(data);

log('Main execution finished (asynchronous tasks may still be pending)');

//tell GTM we finished main execution
data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
    {
        "instance": {
            "key": {
                "publicId": "logging",
                "versionId": "1"
            },
            "param": [
                {
                    "key": "environments",
                    "value": {
                        "type": 1,
                        "string": "debug"
                    }
                }
            ]
        },
        "clientAnnotations": {
            "isEditedByUser": true
        },
        "isRequired": true
    },
    {
        "instance": {
            "key": {
                "publicId": "access_globals",
                "versionId": "1"
            },
            "param": [
                {
                    "key": "keys",
                    "value": {
                        "type": 2,
                        "listItem": [
                            {
                                "type": 3,
                                "mapKey": [
                                    {
                                        "type": 1,
                                        "string": "key"
                                    },
                                    {
                                        "type": 1,
                                        "string": "read"
                                    },
                                    {
                                        "type": 1,
                                        "string": "write"
                                    },
                                    {
                                        "type": 1,
                                        "string": "execute"
                                    }
                                ],
                                "mapValue": [
                                    {
                                        "type": 1,
                                        "string": "TTDConversionEvents"
                                    },
                                    {
                                        "type": 8,
                                        "boolean": true
                                    },
                                    {
                                        "type": 8,
                                        "boolean": false
                                    },
                                    {
                                        "type": 8,
                                        "boolean": false
                                    }
                                ]
                            },
                            {
                                "type": 3,
                                "mapKey": [
                                    {
                                        "type": 1,
                                        "string": "key"
                                    },
                                    {
                                        "type": 1,
                                        "string": "read"
                                    },
                                    {
                                        "type": 1,
                                        "string": "write"
                                    },
                                    {
                                        "type": 1,
                                        "string": "execute"
                                    }
                                ],
                                "mapValue": [
                                    {
                                        "type": 1,
                                        "string": "ttdConversionEventsLayer"
                                    },
                                    {
                                        "type": 8,
                                        "boolean": true
                                    },
                                    {
                                        "type": 8,
                                        "boolean": true
                                    },
                                    {
                                        "type": 8,
                                        "boolean": false
                                    }
                                ]
                            },
                            {
                                "type": 3,
                                "mapKey": [
                                    {
                                        "type": 1,
                                        "string": "key"
                                    },
                                    {
                                        "type": 1,
                                        "string": "read"
                                    },
                                    {
                                        "type": 1,
                                        "string": "write"
                                    },
                                    {
                                        "type": 1,
                                        "string": "execute"
                                    }
                                ],
                                "mapValue": [
                                    {
                                        "type": 1,
                                        "string": "ttdConversionEvents"
                                    },
                                    {
                                        "type": 8,
                                        "boolean": true
                                    },
                                    {
                                        "type": 8,
                                        "boolean": true
                                    },
                                    {
                                        "type": 8,
                                        "boolean": false
                                    }
                                ]
                            }
                        ]
                    }
                }
            ]
        },
        "clientAnnotations": {
            "isEditedByUser": true
        },
        "isRequired": true
    },
    {
        "instance": {
            "key": {
                "publicId": "inject_script",
                "versionId": "1"
            },
            "param": [
                {
                    "key": "urls",
                    "value": {
                        "type": 2,
                        "listItem": [
                            {
                                "type": 1,
                                "string": "https://js.adsrvr.org/conversionEvents-v1.min.js"
                            }
                        ]
                    }
                }
            ]
        },
        "clientAnnotations": {
            "isEditedByUser": true
        },
        "isRequired": true
    }
]


___TESTS___

scenarios:
  - name: Basic test (no products)
    code: |-
      const mockData = {
          "adv": "example",
          "tag_type": "upixel_id",
          "upixel_id": "example",
          "referrer_url": "https://testurl/",
          "event_name": "page_view",
          "order_id": "order1234",
          "value": "666",
          "currency": "GBP",
          "item_mapping_item_code": "item_id",
          "item_mapping_name": "item_name",
          "item_mapping_price": "price",
          "item_mapping_qty": "quantity",
          "item_mapping_cat": "item_category",
          "sdk_cookie_sync": 0,
          "sdk_enable_debug": 1,
          "sdk_function_name": "ttdConversionEvents",
          "sdk_object_name": "TTDConversionEvents",
          "sdk_url": "https://js.adsrvr.org/conversionEvents-v1.min.js",
          "sdk_events_layer": "ttdConversionEventsLayer"
      };
      
      // Call runCode to run the template's code.
      runCode(mockData);
      
      //check network tab in browser to see requests
      //
      
      // Verify that the tag finished successfully.
      assertApi('gtmOnSuccess').wasCalled(); //doesn't work with the callback for the script load


___NOTES___

Created on 13/04/2023, 14:17:24
