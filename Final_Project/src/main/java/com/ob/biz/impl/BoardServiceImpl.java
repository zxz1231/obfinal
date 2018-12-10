package com.ob.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ob.biz.dao.BoardDAO;
import com.ob.biz.service.BoardService;
import com.ob.biz.vo.BoardVO;

//@Service : @Component를 상속받아 만든 비즈니스 로직처리 서비스 영역에 사용
@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;

	public BoardServiceImpl() {
		System.out.println(">> BoardServiceImpl 객체생성");
	}

	@Override
	public void insertBoard(BoardVO vo) {
		boardDAO.insertBoard(vo);
	}

	@Override
	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		boardDAO.deleteBoard(vo);
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}

	@Override
	public List<BoardVO> getBoardList(BoardVO vo) {
		return boardDAO.getBoardList(vo);
	}

}

//// BoardDAOMybatis1(쓰는 원본)
/*
 * package com.spring.biz.board.impl;
 * 
 * import java.util.List;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Service;
 * 
 * import com.spring.biz.board.BoardService; import
 * com.spring.biz.board.BoardVO;
 * 
 * //@Service : @Component를 상속받아 만든 비즈니스 로직처리 서비스 영역에 사용
 * 
 * @Service("boardService") public class BoardServiceImpl implements
 * BoardService {
 * 
 * @Autowired private BoardDAOMybatis1 boardDAO;
 * 
 * public BoardServiceImpl() { System.out.println(">> BoardServiceImpl 객체생성"); }
 * 
 * @Override public void insertBoard(BoardVO vo) { boardDAO.insertBoard(vo); }
 * 
 * @Override public void updateBoard(BoardVO vo) { boardDAO.updateBoard(vo); }
 * 
 * @Override public void deleteBoard(BoardVO vo) { boardDAO.deleteBoard(vo); }
 * 
 * @Override public BoardVO getBoard(BoardVO vo) { return boardDAO.getBoard(vo);
 * }
 * 
 * @Override public List<BoardVO> getBoardList(BoardVO vo) { return
 * boardDAO.getBoardList(vo); }
 * 
 * }
 */
// ---------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------------------
// BoardDAO(쓰는 원본)
/*
 * package com.spring.biz.board.impl;
 * 
 * import java.util.List;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Service;
 * 
 * import com.spring.biz.board.BoardService; import
 * com.spring.biz.board.BoardVO;
 * 
 * //@Service : @Component를 상속받아 만든 비즈니스 로직처리 서비스 영역에 사용
 * 
 * @Service("boardService") public class BoardServiceImpl implements
 * BoardService{
 * 
 * @Autowired private BoardDAO boardDAO;
 * 
 * public BoardServiceImpl() { System.out.println(">> BoardServiceImpl 객체생성"); }
 * 
 * @Override public void insertBoard(BoardVO vo) { boardDAO.insertBoard(vo); }
 * 
 * @Override public void updateBoard(BoardVO vo) { boardDAO.updateBoard(vo); }
 * 
 * @Override public void deleteBoard(BoardVO vo) { boardDAO.deleteBoard(vo); }
 * 
 * @Override public BoardVO getBoard(BoardVO vo) { return boardDAO.getBoard(vo);
 * }
 * 
 * @Override public List<BoardVO> getBoardList(BoardVO vo) { return
 * boardDAO.getBoardList(vo); }
 * 
 * }
 */