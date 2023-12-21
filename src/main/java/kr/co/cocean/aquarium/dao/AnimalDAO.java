package kr.co.cocean.aquarium.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import kr.co.cocean.aquarium.dto.AnimalDTO;
import kr.co.cocean.aquarium.dto.ClassficationDTO;
import kr.co.cocean.aquarium.dto.InChargeDTO;
import kr.co.cocean.aquarium.dto.LogPlanDTO;
import kr.co.cocean.main.dto.FileDTO;

@Mapper
public interface AnimalDAO {

	ArrayList<AnimalDTO> animalList();

	ArrayList<ClassficationDTO> classficationSearch(String keyword);

	ArrayList<String> tankList(String branch);

	void animalWrte(AnimalDTO param);

	String classfication(int speciesID);

	void upload(FileDTO dto);

	AnimalDTO animalDetail(int animalID);

	ArrayList<InChargeDTO> animalInCharge(int animalID);

	ArrayList<LogPlanDTO> animalLogPlan(int animalID);

}
