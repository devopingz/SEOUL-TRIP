package com.trip.demo.service;

import java.util.HashMap;
import java.util.List;

import com.trip.demo.dto.BoardDto;
import com.trip.demo.dto.MemberDto;

public interface BoardService {
	
	public void insert(BoardDto board);
	public void delete(BoardDto board);
	public void update(BoardDto board);
	public void select(BoardDto board);
	public List<BoardDto> selectMain(BoardDto board);
	public List<BoardDto> selectBoard(BoardDto board);
	public List<BoardDto> selectBoardIf(BoardDto board);
	public List<BoardDto> selectBoardcon(BoardDto board);
	public List<BoardDto> selectBoardMy(BoardDto board);
	public void write(BoardDto board);
	public BoardDto getBoard(int num);
	public List<BoardDto> getBoardList();
	public List<BoardDto> getBoardSearchList(HashMap<String,Object> params);
}
