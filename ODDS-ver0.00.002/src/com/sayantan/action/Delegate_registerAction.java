package com.sayantan.action;

import com.sayantan.utils.AppSupport;

public class Delegate_registerAction extends AppSupport{
	/**
	 * Login action page. 
	 */
	private static final long serialVersionUID = 178303731947801496L;
	
	@Override
    public String execute() throws Exception{
        if (isInvalid(appForm.getRegUname())) return I;
        if (isInvalid(appForm.getRegPass())) return I;
        if (!appForm.getRegPass().equals(appForm.getRegRPass())){
        	addActionError("The passwords should match!");
        	return I;
        }

        return S;
    }

    private boolean isInvalid(String value) {
        return (value == null || value.length() == 0);
    }
}
