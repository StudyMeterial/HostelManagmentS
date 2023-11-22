package HostelM;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RoomDAO {

	 public List<Room> getAllRooms() {
	        List<Room> rooms = new ArrayList<>();

	        try (Connection connection = DatabaseConnection.getConnection();
	             PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM rooms");
	             ResultSet resultSet = preparedStatement.executeQuery()) {

	            while (resultSet.next()) {
	                Room room = new Room();
	                room.setRoomId(resultSet.getInt("id"));
	                room.setFloorNumber(resultSet.getInt("floor_number"));
	                
	                // Set other room details
	                rooms.add(room);
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return rooms;
	    }
}
