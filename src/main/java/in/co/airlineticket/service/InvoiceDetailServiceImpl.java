package in.co.airlineticket.service;

import java.util.List;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.co.airlineticket.dao.InvoiceDetailDAOInt;
import in.co.airlineticket.dto.InvoiceDetailDTO;
import in.co.airlineticket.exception.DuplicateRecordException;

@Service
public class InvoiceDetailServiceImpl implements InvoiceDetailServiceInt {

	private static Logger log = Logger.getLogger(InvoiceDetailServiceImpl.class.getName());

	@Autowired
	private InvoiceDetailDAOInt dao;

	@Override
	@Transactional
	public long add(InvoiceDetailDTO dto) throws DuplicateRecordException {
		log.info("InvoiceDetailServiceImpl Add method start");
		long pk = dao.add(dto);
		log.info("InvoiceDetailServiceImpl Add method end");
		return pk;
	}

	@Override
	@Transactional
	public InvoiceDetailDTO findBypk(long pk) {
		log.info("InvoiceDetailServiceImpl findBypk method start");
		InvoiceDetailDTO dto = dao.findBypk(pk);
		log.info("InvoiceDetailServiceImpl findBypk method end");
		return dto;
	}

	@Override
	@Transactional
	public InvoiceDetailDTO findByName(String name) {
		log.info("InvoiceDetailServiceImpl findByInvoiceDetailName method start");
		InvoiceDetailDTO dto = dao.findByName(name);
		log.info("InvoiceDetailServiceImpl findByInvoiceDetailName method end");
		return dto;
	}

	@Override
	@Transactional
	public void update(InvoiceDetailDTO dto) throws DuplicateRecordException {
		log.info("InvoiceDetailServiceImpl update method start");
		dao.update(dto);
		log.info("InvoiceDetailServiceImpl update method end");
	}

	@Override
	@Transactional
	public List<InvoiceDetailDTO> list() {
		log.info("InvoiceDetailServiceImpl list method start");
		List<InvoiceDetailDTO> list = dao.list();
		log.info("InvoiceDetailServiceImpl list method end");
		return list;
	}

	@Override
	@Transactional
	public List<InvoiceDetailDTO> list(int pageNo, int pageSize) {
		log.info("InvoiceDetailServiceImpl list method start");
		List<InvoiceDetailDTO> list = dao.list(pageNo, pageSize);
		log.info("InvoiceDetailServiceImpl list method end");
		return list;
	}

	@Override
	@Transactional
	public List<InvoiceDetailDTO> search(InvoiceDetailDTO dto) {
		log.info("InvoiceDetailServiceImpl search method start");
		List<InvoiceDetailDTO> list = dao.search(dto);
		log.info("InvoiceDetailServiceImpl search method end");
		return list;
	}

	@Override
	@Transactional
	public List<InvoiceDetailDTO> search(InvoiceDetailDTO dto, int pageNo, int pageSize) {
		log.info("InvoiceDetailServiceImpl search method start");
		List<InvoiceDetailDTO> list = dao.search(dto, pageNo, pageSize);
		log.info("InvoiceDetailServiceImpl search method end");
		return list;
	}
}