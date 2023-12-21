package kr.co.cocean.approval.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.cocean.approval.dto.ApprovalDTO;
@Mapper
public interface ApprovalDAO {

	ArrayList<ApprovalDTO> list();

	ArrayList<ApprovalDTO> formSearch(List<String> keyword);

	ArrayList<ApprovalDTO> draftInfo(int employeeID);

	void write(HashMap<String, String> param);

	void writeWorkDraft(HashMap<String, String> param);

	void writeAttendanceDraftContent(HashMap<String, String> param);


}
