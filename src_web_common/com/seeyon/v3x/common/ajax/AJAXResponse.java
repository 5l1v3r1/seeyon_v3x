package com.seeyon.v3x.common.ajax;

/**
 * 
 * @author <a href="mailto:tanmf@seeyon.com">Tanmf</a>
 * @version 1.0 2006-9-16
 */
public interface AJAXResponse {
    void complete(String returnValueType) throws AJAXException;
}
