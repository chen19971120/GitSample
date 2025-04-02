using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 問卷資料表，儲存每份問卷的基本資訊
/// </summary>
public partial class questionnaire
{
    /// <summary>
    /// 問卷ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 課程ID，對應至課程資料表的ID
    /// </summary>
    public int? course_id { get; set; }

    /// <summary>
    /// 問卷類別ID，對應至問卷類別資料表的ID
    /// </summary>
    public int? questionnaireCategory_id { get; set; }

    /// <summary>
    /// 問卷名稱
    /// </summary>
    public string? name { get; set; }

    public virtual courseData? course { get; set; }

    public virtual questionnaireCategory? questionnaireCategory { get; set; }

    public virtual ICollection<questionnaireHistory> questionnaireHistory { get; set; } = new List<questionnaireHistory>();

    public virtual ICollection<questionnaireQuestion> questionnaireQuestion { get; set; } = new List<questionnaireQuestion>();
}
