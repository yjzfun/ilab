package top.yjzloveyzh.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import top.yjzloveyzh.common.pojo.Lab;
import top.yjzloveyzh.dao.LabDao;
import top.yjzloveyzh.services.LabService;

@Service(value = "labServiceImpl")
public class LabServiceImpl implements LabService {

    @Qualifier(value = "labDaoImpl")
    @Autowired
    LabDao labDao;

    @Override
    public List<Lab> getLabs() {
        List<Lab> labs = labDao.getLab();

        return labs;
    }
}
