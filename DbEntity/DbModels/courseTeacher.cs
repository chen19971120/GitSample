using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 課程授課老師資料表，儲存每門課程的授課老師
/// </summary>
public partial class courseTeacher
{
    /// <summary>
    /// 課程授課老師ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 課程ID，參照課程資料表的ID
    /// </summary>
    public int? courseData_id { get; set; }

    /// <summary>
    /// 老師的名字，不可為空
    /// </summary>
    public string teacher_name { get; set; } = null!;

    public virtual courseData? courseData { get; set; }

    public virtual ICollection<coursePlan> coursePlan { get; set; } = new List<coursePlan>();
}
