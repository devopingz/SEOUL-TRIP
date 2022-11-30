package com.trip.demo.dao;

import java.util.HashMap;

import java.util.List;

import com.trip.demo.dto.BoardDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
    public void insertBoard (BoardDto board);
    public List<BoardDto> selectBoard (BoardDto board);
    public List<BoardDto> selectMain (BoardDto board);
    public List<BoardDto> selectBoardIf (BoardDto board);
    public List<BoardDto> selectBoardcon (BoardDto board);
    public List<BoardDto> selectBoardMy (BoardDto board);
    public void deleteBoard (BoardDto board);
    public void updateBoard (BoardDto board);
    public void selectBoardDetail(BoardDto board);
    public BoardDto selectOneBoard (int num);
    public List<BoardDto> selectSearchBoard (HashMap<String, Object> params);
    public List<BoardDto> selectAllBoard();
}
