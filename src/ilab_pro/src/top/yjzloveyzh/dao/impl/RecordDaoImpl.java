package top.yjzloveyzh.dao.impl;

import org.springframework.stereotype.Repository;

import top.yjzloveyzh.common.pojo.Pagination;
import top.yjzloveyzh.common.pojo.RequestBuyRecord;
import top.yjzloveyzh.dao.MySqlSessionDaoSupport;
import top.yjzloveyzh.dao.RecordDao;

@Repository(value="recordDaoImpl")
public class RecordDaoImpl extends MySqlSessionDaoSupport implements RecordDao {

    @Override
    public int insertRequestRecordByRecord(RequestBuyRecord record) {

        return getSqlSession().getMapper(RecordDao.class).insertRequestRecordByRecord(record);
    }

    @Override
    public Pagination<RequestBuyRecord> getRequestRecordPagination(String keyword, int start, int offset, String orderBy) {
        return null;
    }
}
