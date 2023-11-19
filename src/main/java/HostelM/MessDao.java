package HostelM;

import java.util.ArrayList;
import java.util.List;

public class MessDao {

	private static List<MessPlan> leaveRequests = new ArrayList<>();

    public void addmessRequest(MessPlan messplan) {
        leaveRequests.add(messplan);
    }

    public List<MessPlan> getAllMessRequests() {
        return leaveRequests;
    }
}


