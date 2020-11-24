package com.mirim.persistence;

import org.springframework.data.repository.CrudRepository;

import com.mirim.domain.Board;

public interface BoardRepository extends CrudRepository<Board, Long>{
	
}
