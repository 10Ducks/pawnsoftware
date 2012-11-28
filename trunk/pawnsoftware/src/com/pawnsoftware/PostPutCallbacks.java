package com.pawnsoftware;

import com.google.appengine.api.datastore.PostPut;
import com.google.appengine.api.datastore.PutContext;
import java.util.logging.Logger;

class PostPutCallbacks {
    static Logger logger = Logger.getLogger("logger");

    @PostPut(kinds = {"Customer", "Order"}) // Only applies to Customers and Orders
    void log(PutContext context) {
        logger.fine("Finished putting " + context.getCurrentElement().getKey());
    }

}