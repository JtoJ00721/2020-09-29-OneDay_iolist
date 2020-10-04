package com.biz.iolist.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.biz.iolist.model.IoVO;

@Mapper
public interface IoDao extends GenericDao<IoVO, Long>{

}
