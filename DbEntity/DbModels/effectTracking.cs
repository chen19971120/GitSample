using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 追蹤學員在不同機關單位的工作成效及表現
/// </summary>
public partial class effectTracking
{
    /// <summary>
    /// 追蹤ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 學員ID，外鍵參照學員資料表
    /// </summary>
    public int? student_id { get; set; }

    /// <summary>
    /// 前單位機關ID，外鍵參照機關資料表
    /// </summary>
    public int? previous_agency_id { get; set; }

    /// <summary>
    /// 後單位機關ID，外鍵參照機關資料表
    /// </summary>
    public int? current_agency_id { get; set; }

    /// <summary>
    /// 實際從事工作分數
    /// </summary>
    public int? job_score { get; set; }

    /// <summary>
    /// 規劃工作分數
    /// </summary>
    public int? plan_job_score { get; set; }

    /// <summary>
    /// 考績分數
    /// </summary>
    public int? performance_score { get; set; }

    /// <summary>
    /// 獎懲分數
    /// </summary>
    public int? reward_score { get; set; }

    /// <summary>
    /// 實績分數
    /// </summary>
    public int? achievement_score { get; set; }

    /// <summary>
    /// 實績備註
    /// </summary>
    public string? achievement_notes { get; set; }

    public virtual agency? current_agency { get; set; }

    public virtual agency? previous_agency { get; set; }

    public virtual student? student { get; set; }
}
