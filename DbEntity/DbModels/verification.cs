using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 核銷作業資料表，紀錄學員的核銷申請(有待討論)
/// </summary>
public partial class verification
{
    /// <summary>
    /// 核銷作業ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 學習歷程ID，外鍵參照學習歷程資料表
    /// </summary>
    public int? learningHistory_id { get; set; }

    /// <summary>
    /// 申請日期
    /// </summary>
    public DateTime? application_date { get; set; }

    /// <summary>
    /// 費用金額
    /// </summary>
    public int? amount { get; set; }

    /// <summary>
    /// 狀態（0=待審核, 1=已核准, 2=已拒絕等）
    /// </summary>
    public int? status { get; set; }

    public virtual learningHistory? learningHistory { get; set; }
}
