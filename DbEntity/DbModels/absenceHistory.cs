using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 缺曠歷程資料表，儲存學員的缺曠紀錄
/// </summary>
public partial class absenceHistory
{
    /// <summary>
    /// 缺曠ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 歷程ID，參照學習歷程資料表的ID
    /// </summary>
    public int? learningHistory_id { get; set; }

    /// <summary>
    /// 缺曠類別ID，參照缺曠類別資料表的ID
    /// </summary>
    public int? absenceCategory_id { get; set; }

    /// <summary>
    /// 缺曠時數，使用整數表示
    /// </summary>
    public int? hours { get; set; }

    public virtual absenceCategory? absenceCategory { get; set; }

    public virtual learningHistory? learningHistory { get; set; }
}
