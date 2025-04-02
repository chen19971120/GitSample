using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 學員問卷紀錄資料表，紀錄學員回答的分數和相關的問卷
/// </summary>
public partial class questionnaireHistory
{
    /// <summary>
    /// 紀錄ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 學員ID，對應至學員資料表的ID
    /// </summary>
    public int? student_id { get; set; }

    /// <summary>
    /// 問卷ID，對應至問卷資料表的ID
    /// </summary>
    public int? questionnaire_id { get; set; }

    /// <summary>
    /// 學員回答的分數
    /// </summary>
    public int? score { get; set; }

    public virtual questionnaire? questionnaire { get; set; }

    public virtual student? student { get; set; }
}
