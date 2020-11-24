package com.mirim.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mirim.domain.Board;

@Controller
public class BoardController {
	@RequestMapping("/getBoardList")
	public String getBoardList(Model model) {
		List<Board> boardList = new ArrayList<Board>();
		
		for(int i=0;i<=10; i++) {
			Board board = new Board();
			board.setSeq(new Long(i));
			board.setTitle("게시판 프로그램 테스트");
			board.setWriter("mirim");
			board.setContent("게시판..ㅜㅜ");
			board.setCreateDate(new Date());
			board.setCnt(0L);
			boardList.add(board);
		}
		model.addAttribute("boardList", boardList);
		return "getBoardList";
	}
}
