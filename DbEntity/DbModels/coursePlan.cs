using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 課程規劃資料表，儲存課程的規劃內容，包括課程內容、授課老師、上課時段等
/// </summary>
public partial class coursePlan
{
    /// <summary>
    /// 規劃ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 課程ID，參照課程資料表的ID
    /// </summary>
    public int? courseData_id { get; set; }

    /// <summary>
    /// 授課老師ID，參照課程授課老師表的ID
    /// </summary>
    public int? teacher_id { get; set; }

    /// <summary>
    /// 課程內容，描述課程的內容
    /// </summary>
    public string? course_content { get; set; }

    /// <summary>
    /// 時段ID，參照課程上課時段表的ID
    /// </summary>
    public int? schedule_id { get; set; }

    /// <summary>
    /// 時數
    /// </summary>
    public int? hours { get; set; }

    public virtual courseData? courseData { get; set; }

    public virtual courseSchedule? schedule { get; set; }

    public virtual courseTeacher? teacher { get; set; }
}
