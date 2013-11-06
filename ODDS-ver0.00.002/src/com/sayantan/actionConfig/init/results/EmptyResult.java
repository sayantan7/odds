package com.sayantan.actionConfig.init.results;

import java.io.Serializable;

import com.opensymphony.xwork2.ActionInvocation;

public interface EmptyResult extends Serializable{
	public void execute(ActionInvocation inv) throws Exception;
}
