package HostelM;

import java.util.ArrayList;
import java.util.List;

public class LeaveRequestDao2 {

	 private static List<leaveRequestDao> leaveRequests = new ArrayList<>();

	    public void addLeaveRequest(leaveRequestDao leaveRequest) {
	        leaveRequests.add(leaveRequest);
	    }

	    public List<leaveRequestDao> getAllLeaveRequests() {
	        return leaveRequests;
	    }
}
