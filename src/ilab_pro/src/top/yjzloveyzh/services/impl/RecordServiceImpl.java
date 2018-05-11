package top.yjzloveyzh.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import top.yjzloveyzh.common.Constants;
import top.yjzloveyzh.common.exception.RecordException;
import top.yjzloveyzh.common.pojo.Pagination;
import top.yjzloveyzh.common.pojo.RequestBuyRecord;
import top.yjzloveyzh.common.pojo.User;
import top.yjzloveyzh.common.utils.PaginationUtil;
import top.yjzloveyzh.common.utils.PropertyUtil;
import top.yjzloveyzh.dao.RecordDao;
import top.yjzloveyzh.services.RecordService;

@Service(value = "recordServiceImpl")
public class RecordServiceImpl implements RecordService{

    @Qualifier(value = "recordDaoImpl")
    @Autowired
    private RecordDao recordDao;

    @Override
    public Pagination<RequestBuyRecord> getPaginationRequestBuyRecord(User user, String keyword, String currentPage, String orderBy) throws RecordException {

        if (user == null) {
            throw new RecordException(Constants.ErrorCode.ERROR_USER_NOT_EXIST, "对不起, 请先登录.");
        }

        int page = 1;
        int order = 1;
        int count = 6;

        if (keyword == null) {
            keyword = new String();
        }

        try {
            page = Integer.parseInt(currentPage);

            if (page <= 0) {
                page = 1;
            }
            count = Integer.parseInt(PropertyUtil.getRequestBuyRecordPerPageCount());
        } catch (NumberFormatException numberFormatException) {
        }

        try {
            order = Integer.parseInt(orderBy);
            order = order == 0 ? order : 1;
        } catch (NumberFormatException e) {
        }

        try {
            count = Integer.parseInt(PropertyUtil.getRequestBuyRecordPerPageCount());
        } catch (NumberFormatException e) {
        }


        Pagination<RequestBuyRecord> pagination = new Pagination<RequestBuyRecord>();
        pagination.setSearchKeyWord(keyword);
        orderBy = order == 0 ? "ASC" : "DESC";

        keyword = "%" + keyword + "%";
        int totalCount = recordDao.getRequestBuyRecordCount(keyword, user.getId());
        int start = (page - 1) * count;
        int offset = count;
        int maxPage = (int) Math.ceil(totalCount * 1.0 / count);

        if (page > maxPage) {
            page = maxPage;
        }
        List<Integer> pageIndexList = PaginationUtil.makePageIndexList(page, count, maxPage);

        pagination.setCurrentPage(page);
        pagination.setResults(recordDao.getRequestBuyRecordPagination(keyword, start, offset, orderBy, user.getId()));
        pagination.setTotalCount(count);
        pagination.setTotalPage(maxPage);
        pagination.setPagesList(pageIndexList);

        return pagination;
    }
}
