<<<<<<< HEAD
/*
 * Copyright 2017 IBM Corp. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
 * an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */
 
=======
>>>>>>> master
 /**
 * 409 Conflict (HTTP/1.1).
 */
public with sharing class IBMWatsonConflictException  Extends IBMWatsonServiceResponseException{
	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Instantiates a new Conflict Exception.
	 *
	 * @param message the error message
	 * @param response the HTTP response
	 */
	public IBMWatsonConflictException(String message, IBMWatsonResponse response) {
		super(IBMWatsonHttpStatus.CONFLICT, message, response);
	}    
}