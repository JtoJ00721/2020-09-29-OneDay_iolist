package com.biz.iolist.service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.biz.iolist.mapper.IoDao;
import com.biz.iolist.model.IoVO;

@Service
@Qualifier("ioService")
public class IoServiceImplV1 implements IoService {

	@Autowired
	private IoDao ioDao;

	@Override
	public List<IoVO> selectAll() {
		return ioDao.selectAll();
	}

	@Override
	public IoVO findById(Long id) {
		return ioDao.findById(id);
	}

	@Override
	public int insert(IoVO ioVO) {

		LocalDateTime dateTime = LocalDateTime.now();
		String insertDate = DateTimeFormatter.ofPattern("yyyy-MM-dd").format(dateTime);
		String insertTime = DateTimeFormatter.ofPattern("HH:mm:SS").format(dateTime);

		ioVO.setIo_date(insertDate);
		ioVO.setIo_time(insertTime);
		ioVO.setIo_total(ioVO.getIo_price() * ioVO.getIo_quan());

		int ret = ioDao.insert(ioVO);
		return ret;

	}

	@Override
	public int update(IoVO ioVO) {

		ioVO.setIo_total(ioVO.getIo_price() * ioVO.getIo_quan());
		int ret = ioDao.update(ioVO);
		return ret;

	}

	@Override
	public int delete(Long id) {
		int ret = ioDao.delete(id);
		return ret;
	}

}
