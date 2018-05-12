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

    /**
     * 获取还未审批的申请购置记录， 要求根据时间来进行排序， 默认从近到远。
     * @param keyword 搜索关键词
     * @param start 起始index
     * @param offset 数据偏移量
     * @param orderBy 根据什么排序, 0 正序， 1 倒序
     * @return 申请购置记录的列表
     */
    public List<RequestBuyRecord> getNotReplyRequestBuyRecordPagination(
        @Param("keyword") String keyword,
        @Param("start") int start,
        @Param("offset") int offset,
        @Param("orderBy") String orderBy
    );

    /**
     * get the all have not replied request-buy-record rows count by keyword.
     * @param keyword
     * @return the request-buy-record count
     */
    public int getNotReplyAllRequestBuyRecordCount(@Param("keyword") String keyword);
}
