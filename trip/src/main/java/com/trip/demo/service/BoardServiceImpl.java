package com.trip.demo.service;

import java.util.HashMap;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.trip.demo.dao.BoardMapper;
import com.trip.demo.dto.BoardDto;
import com.trip.demo.dto.MemberDto;

@Service
public class BoardServiceImpl implements BoardService {
    
    @Autowired
    public BoardMapper bMapper;
    
    @Override
    public void insert(BoardDto board) {
        bMapper.insertBoard(board);
    }
    
    @Override
    public void delete(BoardDto board) {
        bMapper.deleteBoard(board);
    }
    
    @Override
    public void select(BoardDto board) {
        bMapper.selectBoardDetail(board);
    }
    
    
    @Override
    public void update(BoardDto board) {
        bMapper.updateBoard(board);
    }
    
    
    @Override
    public List<BoardDto> selectBoard(BoardDto board) {
        return bMapper.selectBoard(board);
    }
    
    @Override
    public List<BoardDto> selectMain(BoardDto board) {
        return bMapper.selectMain(board);
    }
    
    @Override
    public List<BoardDto> selectBoardIf(BoardDto board) {
        return bMapper.selectBoardIf(board);
    }
    
    @Override
    public List<BoardDto> selectBoardcon(BoardDto board) {
        return bMapper.selectBoardcon(board);
    }
    
    @Override
    public List<BoardDto> selectBoardMy(BoardDto board) {
        return bMapper.selectBoardMy(board);
    }
    
    @Override
    public void write(BoardDto board) {
        // TODO Auto-generated method stub
        bMapper.insertBoard(board);
    }
 
    @Override
    public BoardDto getBoard(int num) {
        // TODO Auto-generated method stub
        return bMapper.selectOneBoard(num);
    }
 
    @Override
    public List<BoardDto> getBoardList() {
        // TODO Auto-generated method stub
        return bMapper.selectAllBoard();
    }
 
    @Override
    public List<BoardDto> getBoardSearchList(HashMap<String, Object> params) {
        // TODO Auto-generated method stub
        return null;
    }
}
