using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 學生狀況記錄表，記錄學生的狀態變更歷史
/// </summary>
public partial class studentStatusLog
{
    /// <summary>
    /// 記錄ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 學員ID，對應至學員資料表的ID
    /// </summary>
    public int? student_id { get; set; }

    /// <summary>
    /// 學員狀態，1=已報名，2=已取消，3=進入培訓中，4=其他
    /// </summary>
    public int? status { get; set; }

    /// <summary>
    /// 狀態變更時間
    /// </summary>
    public DateTime? status_time { get; set; }

    /// <summary>
    /// 取消原因，若狀態為取消時填寫
    /// </summary>
    public string? cancel_reason { get; set; }

    public virtual student? student { get; set; }
}
