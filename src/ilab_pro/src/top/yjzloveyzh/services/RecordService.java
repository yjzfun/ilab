package top.yjzloveyzh.services;

import top.yjzloveyzh.common.exception.RecordException;
import top.yjzloveyzh.common.pojo.Pagination;
import top.yjzloveyzh.common.pojo.RequestBuyRecord;
import top.yjzloveyzh.common.pojo.User;

public interface RecordService {
    public Pagination<RequestBuyRecord> getPaginationRequestBuyRecord(User user, String keyword, String currentPage, String orderBy) throws RecordException;
}
