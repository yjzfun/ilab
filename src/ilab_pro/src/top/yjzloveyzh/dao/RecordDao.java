package top.yjzloveyzh.dao;

import top.yjzloveyzh.common.pojo.Pagination;
import top.yjzloveyzh.common.pojo.RequestBuyRecord;

public interface RecordDao {
    public int insertRequestRecordByRecord(RequestBuyRecord record);

    public Pagination<RequestBuyRecord> getRequestRecordPagination(String keyword, int start, int offset, String orderBy);
}
