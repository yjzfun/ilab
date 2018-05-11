package top.yjzloveyzh.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import top.yjzloveyzh.common.pojo.RequestBuyRecord;

public interface RecordDao {
    public int insertRequestRecordByRecord(RequestBuyRecord record);

    public List<RequestBuyRecord> getRequestBuyRecordPagination(
        @Param("keyword") String keyword,
        @Param("start") int start,
        @Param("offset") int offset,
        @Param("orderBy") String orderBy,
        @Param("requestUserId") int requestUserId
    );

    public int getRequestBuyRecordCount(@Param("keyword") String keyword,  @Param("requestUserId") int requestUserId);
}
