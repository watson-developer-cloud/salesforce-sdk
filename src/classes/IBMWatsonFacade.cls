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

public class IBMWatsonFacade {

	public class EnvironmentResponseDiskUsage {
		public Integer used_bytes;
		public decimal maximum_allowed_bytes;
	}
	
	public class EnvironmentResponseDocument {
		public Integer indexed;
		public decimal maximum_allowed_bytes;
	}
	
	public class EnvironmentResponseIndexCapacity {
		public EnvironmentResponseDocument documents;
		public EnvironmentResponseDiskUsage disk_usage;
	}
	
	public class CreateEnvironmentResponse {
		public String environment_id;
		public String name;
		public String description;
		public String created;
		public String updated;
		public String status;
		public String read_only;
		public EnvironmentResponseIndexCapacity index_capacity;
	}
	
	public class CreateEnvironmentRequest {
		public String name;
		public String description;
		public CreateEnvironmentRequest(String environmentName, String environmentDesc){
			name = environmentName;
			description = environmentDesc;
		}
	}
	
}