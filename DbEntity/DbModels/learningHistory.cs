using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 學習歷程資料表，儲存學員的課程學習成績及相關資料
/// </summary>
public partial class learningHistory
{
    /// <summary>
    /// 歷程ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 課程ID，參照課程資料表的ID
    /// </summary>
    public int? courseData_id { get; set; }

    /// <summary>
    /// 學員ID，參照學員資料表的ID
    /// </summary>
    public int? student_id { get; set; }

    /// <summary>
    /// 成績，整數型態
    /// </summary>
    public int? grade { get; set; }

    /// <summary>
    /// 證書編號
    /// </summary>
    public string? certificate_number { get; set; }

    /// <summary>
    /// 收據編號
    /// </summary>
    public string? receipt_number { get; set; }

    /// <summary>
    /// 補助狀態，1=已補助，2=未補助，3=其他
    /// </summary>
    public int? subsidy_status { get; set; }

    /// <summary>
    /// 訓練結果，1=合格，2=不合格，3=其他，4=已退出
    /// </summary>
    public int? training_result { get; set; }

    /// <summary>
    /// 缺課時數，記錄學員缺席的課程時數
    /// </summary>
    public int? missed_hours { get; set; }

    /// <summary>
    /// 備註，學員的額外資訊或補充說明
    /// </summary>
    public string? remarks { get; set; }

    public virtual ICollection<absenceHistory> absenceHistory { get; set; } = new List<absenceHistory>();

    public virtual courseData? courseData { get; set; }

    public virtual student? student { get; set; }

    public virtual ICollection<verification> verification { get; set; } = new List<verification>();
}
